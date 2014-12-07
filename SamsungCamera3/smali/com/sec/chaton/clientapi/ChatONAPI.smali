.class public Lcom/sec/chaton/clientapi/ChatONAPI;
.super Ljava/lang/Object;
.source "ChatONAPI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;
    }
.end annotation


# static fields
.field static final ACCESS_TOKEN_PROVIDER_URI:Landroid/net/Uri;

.field static final ACTION_FILE:Ljava/lang/String; = "file"

.field protected static final DATA_PREFIX:Ljava/lang/String; = "chaton://"

.field protected static final EXTRA_KEY_RECEIVER:Ljava/lang/String; = "receiver"

.field public static final RESULT_CODE_FAILED:I = 0x0

.field public static final RESULT_CODE_FAIL_ADD_BUDDY_USER_SELF:I = 0x65

.field public static final RESULT_CODE_FAIL_ALREADY_ADDED_BUDDY:I = 0x66

.field public static final RESULT_CODE_FAIL_API_NOT_AVAILABLE:I = 0x2

.field public static final RESULT_CODE_FAIL_BLOCKED_BUDDY:I = 0x67

.field public static final RESULT_CODE_FAIL_EXCEPTION:I = 0x3

.field public static final RESULT_CODE_FAIL_EXCEPTION_ACTIVITY_NOT_FOUND:I = 0x4

.field public static final RESULT_CODE_FAIL_EXCEPTION_ILLEGAL_ARGUMENT:I = 0x7

.field public static final RESULT_CODE_FAIL_EXCEPTION_UNSUPPOERT_ENCODING:I = 0x5

.field public static final RESULT_CODE_FAIL_INVALID_PHONE_NUMBER:I = 0x68

.field public static final RESULT_CODE_FAIL_INVALID_USER:I = 0x64

.field public static final RESULT_CODE_FAIL_MULTIMEDIA_LIMIT_EXCEEDED:I = 0x8

.field public static final RESULT_CODE_FAIL_TEXT_LIMIT_EXCEEDED:I = 0x6

.field public static final RESULT_CODE_INITIALIZE_CONNECTION_FAILED:I = 0x9

.field public static final RESULT_CODE_INVALID_ACCESS_KEY:I = 0x3

.field public static final RESULT_CODE_INVALID_CHAT_TYPE:I = 0x5

.field public static final RESULT_CODE_INVALID_CONTENT:I = 0xb

.field public static final RESULT_CODE_INVALID_MEDIA_TYPE:I = 0x6

.field public static final RESULT_CODE_INVALID_MESSAGE_ID:I = 0xa

.field public static final RESULT_CODE_INVALID_MULTIMEDIA_DATA:I = 0x9

.field public static final RESULT_CODE_INVALID_RECEIVER_LIST:I = 0xd

.field public static final RESULT_CODE_INVALID_REQUEST:I = 0x4

.field public static final RESULT_CODE_MESSAGE_QUEUE_CREATE_FAILED:I = 0x7

.field public static final RESULT_CODE_MESSAGE_QUEUE_FULL:I = 0x8

.field public static final RESULT_CODE_NETWORK_NOT_AVAILABLE:I = 0x2

.field public static final RESULT_CODE_NOT_SUPPORT_MEDIA:I = 0xc

.field public static final RESULT_CODE_SUCCESS:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.chaton.access_token.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/chaton/clientapi/ChatONAPI;->ACCESS_TOKEN_PROVIDER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static addPassword(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/chaton/clientapi/ChatONAPI;->ACCESS_TOKEN_PROVIDER_URI:Landroid/net/Uri;

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "password"

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method protected static getActivityIntent(Landroid/content/Context;Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p5, :cond_6

    const-string v2, "chaton://"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    if-eqz p1, :cond_7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p3, :cond_7

    :cond_0
    invoke-virtual {p1}, Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    if-eqz p3, :cond_2

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "receiver"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    if-eqz p4, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz p3, :cond_5

    :cond_4
    invoke-static {p0, v1}, Lcom/sec/chaton/clientapi/ChatONAPI;->addPassword(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_5
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v1

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chaton://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_7
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1
.end method

.method static openMessageChatRoom(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, p1

    move-object v5, v1

    invoke-static/range {v0 .. v5}, Lcom/sec/chaton/clientapi/ChatONAPI;->getActivityIntent(Landroid/content/Context;Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static openMessageChatRoomWithDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/sec/chaton/clientapi/ChatONAPI;->getActivityIntent(Landroid/content/Context;Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static sendMessageContent(Landroid/content/Context;Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/sec/chaton/clientapi/ChatONAPI;->getActivityIntent(Landroid/content/Context;Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static sendMessageContent(Landroid/content/Context;Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/sec/chaton/clientapi/ChatONAPI;->getActivityIntent(Landroid/content/Context;Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
