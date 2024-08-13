#!/usr/bin/env python3
def list_all(mongo_collection):
    """
    Lists all documents in a MongoDB collection.

    Parameters:
    mongo_collection (pymongo.collection.Collection): The MongoDB collection object.

    Returns:
    list: A list of documents in the collection, or an empty list if the collection is empty.
    """
    return list(mongo_collection.find())
