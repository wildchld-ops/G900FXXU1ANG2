.class public Lcom/bst/airmessage/sdk/ReplyStatus;
.super Ljava/lang/Object;
.source "ReplyStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/bst/airmessage/sdk/ReplyStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final FAILED:I = 0x1

.field public static final SUCCESS:I


# instance fields
.field private category:Ljava/lang/String;

.field private replyId:Ljava/lang/String;

.field private result:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bst/airmessage/sdk/ReplyStatus$1;

    invoke-direct {v0}, Lcom/bst/airmessage/sdk/ReplyStatus$1;-><init>()V

    sput-object v0, Lcom/bst/airmessage/sdk/ReplyStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1    # Landroid/os/Parcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bst/airmessage/sdk/ReplyStatus;->replyId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bst/airmessage/sdk/ReplyStatus;->category:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bst/airmessage/sdk/ReplyStatus;->result:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bst/airmessage/sdk/ReplyStatus;->replyId:Ljava/lang/String;

    iput p2, p0, Lcom/bst/airmessage/sdk/ReplyStatus;->result:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bst/airmessage/sdk/ReplyStatus;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getReplyId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bst/airmessage/sdk/ReplyStatus;->replyId:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    iget v0, p0, Lcom/bst/airmessage/sdk/ReplyStatus;->result:I

    return v0
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/bst/airmessage/sdk/ReplyStatus;->category:Ljava/lang/String;

    return-void
.end method

.method public setReplyId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/bst/airmessage/sdk/ReplyStatus;->replyId:Ljava/lang/String;

    return-void
.end method

.method public setResult(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/bst/airmessage/sdk/ReplyStatus;->result:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    iget-object v0, p0, Lcom/bst/airmessage/sdk/ReplyStatus;->replyId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bst/airmessage/sdk/ReplyStatus;->category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/bst/airmessage/sdk/ReplyStatus;->result:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
