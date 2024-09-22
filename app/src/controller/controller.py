## Import Libries
from fastapi import APIRouter, File, UploadFile, Header, Query
from src.models.Items import ItemBase
from src.service.service import (
    create_item_svc,
    delete_item_svc,
    read_item_svc,
    read_items_svc,
    update_item_svc,
)
from typing import Annotated
import shutil
import os

## Initialize APIRouter
router = APIRouter()


## Add Controllers
@router.get("/")
async def Welcome():
    return {"message": "Application is working. Thank you!"}


@router.post("/items")
async def create_item_cont(item: ItemBase):
    return create_item_svc(item)

# Endpoint to Return Single and Multiple Data
@router.get("/items")
async def read_item_cont(itemid: int = Query(default=None)):

    if itemid:
        return read_item_svc(itemid)
    return read_items_svc()

# # Read all Items
# @router.get("/items")
# async def read_items_cont():

# Update operation
@router.put("/items")
async def update_item_cont(item: ItemBase, itemid: int = Header(...)):
    return update_item_svc(itemid, item)


# Delete operation
@router.delete("/items")
async def delete_item_cont(itemid: int = Header(...)):
    return delete_item_svc(itemid)

# Define the upload directory
UPLOAD_DIR = "/tmp"
os.makedirs(UPLOAD_DIR, exist_ok=True)

@router.post("/uploadfile")
async def create_upload_file(file: UploadFile = File(...)):
    
    # Create the file path
    file_path = os.path.join(UPLOAD_DIR, file.filename)
        
    # Save the file
    with open(file_path, "wb") as buffer:
        shutil.copyfileobj(file.file, buffer)
    
    print(os.listdir("/tmp"))
    return {"message": "File uploaded successfully. Thank you!"}
     