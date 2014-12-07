.class public final enum Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;
.super Ljava/lang/Enum;
.source "ChatONAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/chaton/clientapi/ChatONAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MimeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;

.field public static final enum image:Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;

.field public static final enum text:Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;

.field public static final enum unknown:Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;

.field public static final enum video:Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;

    const-string v1, "unknown"

    const-string v2, ""

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;->unknown:Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;

    new-instance v0, Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;

    const-string v1, "text"

    const-string v2, "text/*"

    invoke-direct {v0, v1, v4, v2}, Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;->text:Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;

    new-instance v0, Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;

    const-string v1, "image"

    const-string v2, "image/*"

    invoke-direct {v0, v1, v5, v2}, Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;->image:Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;

    new-instance v0, Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;

    const-string v1, "video"

    const-string v2, "video/*"

    invoke-direct {v0, v1, v6, v2}, Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;->video:Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;

    sget-object v1, Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;->unknown:Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;->text:Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;->image:Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;->video:Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;->$VALUES:[Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;

    return-object v0
.end method

.method public static values()[Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;
    .locals 1

    sget-object v0, Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;->$VALUES:[Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;->value:Ljava/lang/String;

    return-object v0
.end method
