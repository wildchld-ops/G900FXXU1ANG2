.class public Lcom/sec/chaton/clientapi/exception/NotAvailableClientAPIException;
.super Lcom/sec/chaton/clientapi/exception/ClientAPIException;
.source "NotAvailableClientAPIException.java"


# static fields
.field private static final serialVersionUID:J = -0x787a8827b3c02a07L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/chaton/clientapi/exception/ClientAPIException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sec/chaton/clientapi/exception/ClientAPIException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/Throwable;

    invoke-direct {p0, p1, p2}, Lcom/sec/chaton/clientapi/exception/ClientAPIException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;

    invoke-direct {p0, p1}, Lcom/sec/chaton/clientapi/exception/ClientAPIException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
