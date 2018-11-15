# Solr:

- Open source search platform built upon a java library

# Installing Solr:
- Download solr - http://lucene.apache.org/solr/downloads.html

- Cd desktop
- Dir
- Cd solr-7.5.0
- dir
- Cd server
- Dir
- Java -jar start.jar --module=http


http://localhost:8983/solr/#/

#Why search server?
```
 A relational database management system (RDBMS) is a database management system (DBMS) 
RDMS not capable of relevancy search
RDMS lags on large volume of data
```

# Lucene
```
-Open source Java library for indexing and searching
-In Lucene, Document is the unit of search and index
-An index consists of one or more documents
-A document consists of one or more fields.
-A field is simply a name-value pair.
-Retrieves results based on inverted index.
```

# Inverted Index:

```
-An inverted index is an index data structure storing a mapping from words to documents.
-Hashmap like data structure that directs you from a word to a document or a web page.
-Indexing is slow
-Searching is fast.
-Does not store duplicate keywords in index.
-Ex: Index at back of the book.
```

#Two types of inverted index:

-Record-level inverted index- contains a list of references to documents for each word.

-Word-level inverted index-contains the positions of each word within a document

#Advantage:
-Allows fast full text searches.
-Easy to develop
-Most popular data structure used in document retrieval systems

#Steps:

-Fetch the Document
-Stemming of Root Word
-Record Document IDs

#Forward Index:
```
-Mapping  from documents to words
-Indexing is quite fast as it only append keywords as it move forwards.
-Searching is quite difficult as it has to look at every contents of index just to retrieve all pages related to word.
-It stores duplicate keywords in index.
-Ex:Table of contents in book.
```

#Solr:

-Apache Solr is an open source search platform built upon a Java library called Lucene.

-Popular search platform for Web sites because it can index and search multiple sites .

-Extensible architecture.


#Solr Fundamentals:
```
-Searching

-Sorting results

-Faceting

-Range Queries

-Spell Check

-Highlighting
```