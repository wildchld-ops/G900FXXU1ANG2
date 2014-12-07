.class public Lcom/android/mms/bstairmessage/SAirMessage;
.super Ljava/lang/Object;
.source "SAirMessage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/SAirMessage"

.field private static mManager:Lcom/bst/airmessage/sdk/AirMessageManager;

.field private static sInstance:Lcom/android/mms/bstairmessage/SAirMessage;


# instance fields
.field private BUNDLE_EXTRA_SMSBODY_KEY:Ljava/lang/String;

.field private COLUMN_DATE:I

.field private COLUMN_MMS_TYPE:I

.field private COLUMN_MSG_ID:I

.field private COLUMN_SMS_ADDRESS:I

.field private COLUMN_SMS_BODY:I

.field private COLUMN_SUBJECT:I

.field private COLUMN_SUBJECT_CS:I

.field private COLUMN_THREAD_ID:I

.field private MMS_AUDIO:Ljava/lang/String;

.field private MMS_EXPIREDATE:Ljava/lang/String;

.field private MMS_IMAGE:Ljava/lang/String;

.field private MMS_LAYOUTTYPE:Ljava/lang/String;

.field private MMS_LOCATION:Ljava/lang/String;

.field private MMS_RAWDATA:Ljava/lang/String;

.field private MMS_SIZE:Ljava/lang/String;

.field private MMS_STATUS_PROJECTION:[Ljava/lang/String;

.field private MMS_TEXT:Ljava/lang/String;

.field private MMS_TYPE:Ljava/lang/String;

.field public final MMS_URI:Landroid/net/Uri;

.field private MMS_VIDEO:Ljava/lang/String;

.field private NEW_INCOMING_MM_CONSTRAINT:Ljava/lang/String;

.field private final NEW_INCOMING_SM_CONSTRAINT:Ljava/lang/String;

.field private SMS_STATUS_PROJECTION:[Ljava/lang/String;

.field public final SMS_URI:Landroid/net/Uri;

.field private bRegisterCallback:Z

.field private mAirMessageCallback:Lcom/bst/airmessage/sdk/AirMessageCallback;

.field private mContext:Landroid/content/Context;

.field private mDelaySendingLength:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1    # Landroid/content/Context;

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/bstairmessage/SAirMessage;->SMS_URI:Landroid/net/Uri;

    const-string v0, "content://mms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/bstairmessage/SAirMessage;->MMS_URI:Landroid/net/Uri;

    const-string v0, "m_type"

    iput-object v0, p0, Lcom/android/mms/bstairmessage/SAirMessage;->MMS_TYPE:Ljava/lang/String;

    const-string v0, "m_size"

    iput-object v0, p0, Lcom/android/mms/bstairmessage/SAirMessage;->MMS_SIZE:Ljava/lang/String;

    const-string v0, "m_video"

    iput-object v0, p0, Lcom/android/mms/bstairmessage/SAirMessage;->MMS_VIDEO:Ljava/lang/String;

    const-string v0, "m_audio"

    iput-object v0, p0, Lcom/android/mms/bstairmessage/SAirMessage;->MMS_AUDIO:Ljava/lang/String;

    const-string v0, "m_image"

    iput-object v0, p0, Lcom/android/mms/bstairmessage/SAirMessage;->MMS_IMAGE:Ljava/lang/String;

    const-string v0, "m_location"

    iput-object v0, p0, Lcom/android/mms/bstairmessage/SAirMessage;->MMS_LOCATION:Ljava/lang/String;

    const-string v0, "m_rawdata"

    iput-object v0, p0, Lcom/android/mms/bstairmessage/SAirMessage;->MMS_RAWDATA:Ljava/lang/String;

    const-string v0, "m_text"

    iput-object v0, p0, Lcom/android/mms/bstairmessage/SAirMessage;->MMS_TEXT:Ljava/lang/String;

    const-string v0, "m_layouttype"

    iput-object v0, p0, Lcom/android/mms/bstairmessage/SAirMessage;->MMS_LAYOUTTYPE:Ljava/lang/String;

    const-string v0, "m_expiredate"

    iput-object v0, p0, Lcom/android/mms/bstairmessage/SAirMessage;->MMS_EXPIREDATE:Ljava/lang/String;

    const-string v0, "content"

    iput-object v0, p0, Lcom/android/mms/bstairmessage/SAirMessage;->BUNDLE_EXTRA_SMSBODY_KEY:Ljava/lang/String;

    iput v3, p0, Lcom/android/mms/bstairmessage/SAirMessage;->mDelaySendingLength:I

    iput-boolean v3, p0, Lcom/android/mms/bstairmessage/SAirMessage;->bRegisterCallback:Z

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v6

    const-string v1, "date"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "subject"

    aput-object v2, v0, v1

    const-string v1, "address"

    aput-object v1, v0, v4

    const-string v1, "body"

    aput-object v1, v0, v5

    const/4 v1, 0x6

    const-string v2, "pri"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/mms/bstairmessage/SAirMessage;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v0, "(type = 1 AND read = 0 AND thread_id NOT NULL)"

    iput-object v0, p0, Lcom/android/mms/bstairmessage/SAirMessage;->NEW_INCOMING_SM_CONSTRAINT:Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v6

    const-string v1, "date"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "sub"

    aput-object v2, v0, v1

    const-string v1, "sub_cs"

    aput-object v1, v0, v4

    const-string v1, "m_type"

    aput-object v1, v0, v5

    const/4 v1, 0x6

    const-string v2, "pri"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/mms/bstairmessage/SAirMessage;->MMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v0, "(msg_box=1 AND read=0 AND (m_type=130 OR m_type=132) AND thread_id NOT NULL)"

    iput-object v0, p0, Lcom/android/mms/bstairmessage/SAirMessage;->NEW_INCOMING_MM_CONSTRAINT:Ljava/lang/String;

    iput v3, p0, Lcom/android/mms/bstairmessage/SAirMessage;->COLUMN_THREAD_ID:I

    iput v6, p0, Lcom/android/mms/bstairmessage/SAirMessage;->COLUMN_MSG_ID:I

    iput v7, p0, Lcom/android/mms/bstairmessage/SAirMessage;->COLUMN_DATE:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/bstairmessage/SAirMessage;->COLUMN_SUBJECT:I

    iput v4, p0, Lcom/android/mms/bstairmessage/SAirMessage;->COLUMN_SUBJECT_CS:I

    iput v4, p0, Lcom/android/mms/bstairmessage/SAirMessage;->COLUMN_SMS_ADDRESS:I

    iput v5, p0, Lcom/android/mms/bstairmessage/SAirMessage;->COLUMN_SMS_BODY:I

    iput v5, p0, Lcom/android/mms/bstairmessage/SAirMessage;->COLUMN_MMS_TYPE:I

    new-instance v0, Lcom/android/mms/bstairmessage/SAirMessage$1;

    invoke-direct {v0, p0}, Lcom/android/mms/bstairmessage/SAirMessage$1;-><init>(Lcom/android/mms/bstairmessage/SAirMessage;)V

    iput-object v0, p0, Lcom/android/mms/bstairmessage/SAirMessage;->mAirMessageCallback:Lcom/bst/airmessage/sdk/AirMessageCallback;

    const-string v0, "Mms/SAirMessage"

    const-string v1, "SAirMessage++++()++++++++++"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/mms/bstairmessage/SAirMessage;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/bst/airmessage/sdk/AirMessageManager;->getInstance(Landroid/content/Context;)Lcom/bst/airmessage/sdk/AirMessageManager;

    move-result-object v0

    sput-object v0, Lcom/android/mms/bstairmessage/SAirMessage;->mManager:Lcom/bst/airmessage/sdk/AirMessageManager;

    return-void
.end method

.method public static Destory()V
    .locals 0

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/bstairmessage/SAirMessage;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/bstairmessage/SAirMessage;

    iget-object v0, p0, Lcom/android/mms/bstairmessage/SAirMessage;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/bstairmessage/SAirMessage;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/mms/bstairmessage/SAirMessage;

    iget-object v0, p0, Lcom/android/mms/bstairmessage/SAirMessage;->BUNDLE_EXTRA_SMSBODY_KEY:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/mms/bstairmessage/SAirMessage;
    .locals 2
    .param p0    # Landroid/content/Context;

    sget-object v0, Lcom/android/mms/bstairmessage/SAirMessage;->sInstance:Lcom/android/mms/bstairmessage/SAirMessage;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/mms/bstairmessage/SAirMessage;->init(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/android/mms/bstairmessage/SAirMessage;->sInstance:Lcom/android/mms/bstairmessage/SAirMessage;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0    # Landroid/content/Context;

    const-string v0, "Mms/SAirMessage"

    const-string v1, "SAirMessage.init()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/mms/bstairmessage/SAirMessage;->sInstance:Lcom/android/mms/bstairmessage/SAirMessage;

    if-eqz v0, :cond_0

    const-string v0, "Mms/SAirMessage"

    const-string v1, "Already initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/android/mms/bstairmessage/SAirMessage;

    invoke-direct {v0, p0}, Lcom/android/mms/bstairmessage/SAirMessage;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/bstairmessage/SAirMessage;->sInstance:Lcom/android/mms/bstairmessage/SAirMessage;

    return-void
.end method


# virtual methods
.method public AirMessageIsOn()Z
    .locals 3

    const-string v1, "Mms/SAirMessage"

    const-string v2, "AirMessageIsOn++++()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sget-object v1, Lcom/android/mms/bstairmessage/SAirMessage;->mManager:Lcom/bst/airmessage/sdk/AirMessageManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/mms/bstairmessage/SAirMessage;->mManager:Lcom/bst/airmessage/sdk/AirMessageManager;

    invoke-virtual {v1}, Lcom/bst/airmessage/sdk/AirMessageManager;->isAirMessageOn()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public MsgSendMMSToAirMsg(Landroid/content/Context;JZ)V
    .locals 39
    .param p1    # Landroid/content/Context;
    .param p2    # J
    .param p4    # Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/mms/util/DownloadManager;->isAuto()Z

    move-result v11

    sget-object v2, Lcom/android/mms/bstairmessage/SAirMessage;->mManager:Lcom/bst/airmessage/sdk/AirMessageManager;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/bstairmessage/SAirMessage;->bRegisterCallback:Z

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/mms/bstairmessage/SAirMessage;->mManager:Lcom/bst/airmessage/sdk/AirMessageManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/bstairmessage/SAirMessage;->mAirMessageCallback:Lcom/bst/airmessage/sdk/AirMessageCallback;

    invoke-virtual {v2, v7}, Lcom/bst/airmessage/sdk/AirMessageManager;->registerCallback(Lcom/bst/airmessage/sdk/IAirMessageCallback;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/bstairmessage/SAirMessage;->bRegisterCallback:Z

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/bstairmessage/SAirMessage;->AirMessageIsOn()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Mms/SAirMessage"

    const-string v7, "MsgSendMMSToAirMsg++++()++++AirMessageOff"

    invoke-static {v2, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v2, "Mms/SAirMessage"

    const-string v7, "MsgSendMMSToAirMsg++++++++++++++++++ "

    invoke-static {v2, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/bstairmessage/SAirMessage;->MMS_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/bstairmessage/SAirMessage;->MMS_STATUS_PROJECTION:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/bstairmessage/SAirMessage;->NEW_INCOMING_MM_CONSTRAINT:Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "date desc"

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-eqz v13, :cond_1

    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    if-eqz v13, :cond_1

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    const/4 v13, 0x0

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v23, 0x0

    const/16 v20, 0x0

    const/16 v33, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/bstairmessage/SAirMessage;->COLUMN_MSG_ID:I

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/bstairmessage/SAirMessage;->COLUMN_THREAD_ID:I

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v35

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/bstairmessage/SAirMessage;->COLUMN_DATE:I

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-wide/16 v37, 0x3e8

    mul-long v9, v7, v37

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/bstairmessage/SAirMessage;->COLUMN_MMS_TYPE:I

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/bstairmessage/SAirMessage;->MMS_URI:Landroid/net/Uri;

    move-wide/from16 v0, v28

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/bstairmessage/SAirMessage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v31

    const-wide/16 v7, 0x82

    cmp-long v2, v7, v25

    if-nez v2, :cond_8

    if-eqz v11, :cond_4

    if-eqz p4, :cond_4

    const-string v2, "Mms/SAirMessage"

    const-string v7, "MsgSendMMSToAirMsg++++++++++++++++++Autoloading open++notfinished "

    invoke-static {v2, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v13, :cond_1

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_4
    :try_start_2
    move-object/from16 v0, v31

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v30

    check-cast v30, Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    :goto_1
    :try_start_3
    const-string v2, "Mms/SAirMessage"

    const-string v7, "MsgSendMMSToAirMsg++++++++++++++++++Autoloading close++"

    invoke-static {v2, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v6, ""

    :goto_3
    new-instance v4, Lcom/bst/airmessage/sdk/AirMessage;

    const-string v7, "mms"

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v4 .. v10}, Lcom/bst/airmessage/sdk/AirMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/bstairmessage/SAirMessage;->MMS_TYPE:Ljava/lang/String;

    move-wide/from16 v0, v25

    invoke-virtual {v12, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-wide/16 v7, 0x82

    cmp-long v2, v7, v25

    if-nez v2, :cond_a

    const-string v2, "Mms/SAirMessage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PduHeaders.MESSAGE_TYPE_NOTIFICATION_IND == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v25

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_4
    invoke-virtual {v4, v12}, Lcom/bst/airmessage/sdk/AirMessage;->setData(Landroid/os/Bundle;)V

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/bst/airmessage/sdk/AirMessage;->setThreadId(Ljava/lang/String;)V

    const-string v2, "Messaging"

    invoke-virtual {v4, v2}, Lcom/bst/airmessage/sdk/AirMessage;->setCategory(Ljava/lang/String;)V

    sget-object v2, Lcom/android/mms/bstairmessage/SAirMessage;->mManager:Lcom/bst/airmessage/sdk/AirMessageManager;

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/mms/bstairmessage/SAirMessage;->mManager:Lcom/bst/airmessage/sdk/AirMessageManager;

    invoke-virtual {v2, v4}, Lcom/bst/airmessage/sdk/AirMessageManager;->showSingleAirMessage(Lcom/bst/airmessage/sdk/AirMessage;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    if-eqz v13, :cond_1

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    const/4 v13, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v15

    :try_start_4
    invoke-virtual {v15}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    if-eqz v13, :cond_7

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    const/4 v13, 0x0

    :cond_7
    throw v2

    :cond_8
    const/16 v27, 0x0

    :try_start_5
    move-object/from16 v0, v31

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    check-cast v0, Lcom/google/android/mms/pdu/RetrieveConf;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/RetrieveConf;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v2

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v7}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/model/SlideshowModel;->isRawAttachmentPresent()Z

    move-result v20

    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;
    :try_end_5
    .catch Lcom/google/android/mms/MmsException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v33

    goto/16 :goto_2

    :catch_1
    move-exception v15

    :try_start_6
    invoke-virtual {v15}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    :cond_9
    const/4 v2, 0x0

    invoke-static {v5, v2}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    :cond_a
    if-eqz v23, :cond_b

    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/LayoutModel;->getLayoutType()I

    move-result v17

    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/bstairmessage/SAirMessage;->MMS_LAYOUTTYPE:Ljava/lang/String;

    const-wide/16 v7, 0x1

    invoke-virtual {v12, v2, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_b
    :goto_5
    if-eqz v33, :cond_c

    invoke-virtual/range {v33 .. v33}, Lcom/android/mms/model/SlideModel;->hasLocation()Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_c
    if-eqz v20, :cond_f

    if-eqz v23, :cond_f

    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsList()Ljava/util/ArrayList;

    move-result-object v22

    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    const/16 v16, 0x0

    :goto_6
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_e

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v2}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v2}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/bstairmessage/SAirMessage;->MMS_LAYOUTTYPE:Ljava/lang/String;

    const-wide/16 v7, 0x0

    invoke-virtual {v12, v2, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_5

    :cond_e
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/bstairmessage/SAirMessage;->MMS_RAWDATA:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v12, v2, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_f
    if-eqz v33, :cond_5

    invoke-virtual/range {v33 .. v33}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/bstairmessage/SAirMessage;->MMS_IMAGE:Ljava/lang/String;

    invoke-virtual/range {v33 .. v33}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v12, v2, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_10
    invoke-virtual/range {v33 .. v33}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/bstairmessage/SAirMessage;->MMS_VIDEO:Ljava/lang/String;

    invoke-virtual/range {v33 .. v33}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v12, v2, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_11
    invoke-virtual/range {v33 .. v33}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/bstairmessage/SAirMessage;->MMS_AUDIO:Ljava/lang/String;

    invoke-virtual/range {v33 .. v33}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v2, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    invoke-virtual/range {v33 .. v33}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual/range {v33 .. v33}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual/range {v33 .. v33}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/bstairmessage/SAirMessage;->MMS_TEXT:Ljava/lang/String;

    move-object/from16 v0, v34

    invoke-virtual {v12, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_4
.end method

.method public MsgSendSMSToAirMsg(Landroid/content/Context;)V
    .locals 18
    .param p1    # Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v12, 0x0

    sget-object v1, Lcom/android/mms/bstairmessage/SAirMessage;->mManager:Lcom/bst/airmessage/sdk/AirMessageManager;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/mms/bstairmessage/SAirMessage;->bRegisterCallback:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/mms/bstairmessage/SAirMessage;->mManager:Lcom/bst/airmessage/sdk/AirMessageManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/bstairmessage/SAirMessage;->mAirMessageCallback:Lcom/bst/airmessage/sdk/AirMessageCallback;

    invoke-virtual {v1, v6}, Lcom/bst/airmessage/sdk/AirMessageManager;->registerCallback(Lcom/bst/airmessage/sdk/IAirMessageCallback;)V

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/mms/bstairmessage/SAirMessage;->bRegisterCallback:Z

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/bstairmessage/SAirMessage;->AirMessageIsOn()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Mms/SAirMessage"

    const-string v6, "MsgSendMMSToAirMsg++++()++++AirMessageOff"

    invoke-static {v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v1, "Mms/SAirMessage"

    const-string v6, "MsgSendSMSToAirMsg++++++++++++++++++ "

    invoke-static {v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/bstairmessage/SAirMessage;->SMS_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/bstairmessage/SAirMessage;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v5, "(type = 1 AND read = 0 AND thread_id NOT NULL)"

    const/4 v6, 0x0

    const-string v7, "date desc"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_1

    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_3

    if-eqz v12, :cond_1

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    const/4 v12, 0x0

    goto :goto_0

    :cond_3
    const-wide/16 v14, 0x0

    const/4 v4, 0x0

    const/4 v10, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v8, 0x0

    const/4 v5, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/mms/bstairmessage/SAirMessage;->COLUMN_MSG_ID:I

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/mms/bstairmessage/SAirMessage;->COLUMN_SMS_ADDRESS:I

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/mms/bstairmessage/SAirMessage;->COLUMN_SMS_BODY:I

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/mms/bstairmessage/SAirMessage;->COLUMN_THREAD_ID:I

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/mms/bstairmessage/SAirMessage;->COLUMN_DATE:I

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v5, ""

    :goto_1
    new-instance v3, Lcom/bst/airmessage/sdk/AirMessage;

    const-string v6, "text"

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v3 .. v9}, Lcom/bst/airmessage/sdk/AirMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/bstairmessage/SAirMessage;->BUNDLE_EXTRA_SMSBODY_KEY:Ljava/lang/String;

    invoke-virtual {v11, v1, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Lcom/bst/airmessage/sdk/AirMessage;->setData(Landroid/os/Bundle;)V

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/bst/airmessage/sdk/AirMessage;->setThreadId(Ljava/lang/String;)V

    const-string v1, "Messaging"

    invoke-virtual {v3, v1}, Lcom/bst/airmessage/sdk/AirMessage;->setCategory(Ljava/lang/String;)V

    sget-object v1, Lcom/android/mms/bstairmessage/SAirMessage;->mManager:Lcom/bst/airmessage/sdk/AirMessageManager;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/mms/bstairmessage/SAirMessage;->mManager:Lcom/bst/airmessage/sdk/AirMessageManager;

    invoke-virtual {v1, v3}, Lcom/bst/airmessage/sdk/AirMessageManager;->showSingleAirMessage(Lcom/bst/airmessage/sdk/AirMessage;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    if-eqz v12, :cond_1

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x0

    :try_start_2
    invoke-static {v4, v1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    goto :goto_1

    :catch_0
    move-exception v13

    :try_start_3
    const-string v1, "Mms/SAirMessage"

    const-string v6, "NullPointerException - caught"

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v12, :cond_1

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    const/4 v12, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    if-eqz v12, :cond_6

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    const/4 v12, 0x0

    :cond_6
    throw v1
.end method

.method public getDelayedDeliveryTime()J
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/android/mms/bstairmessage/SAirMessage;->mDelaySendingLength:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public isEnableDelaySending(Landroid/content/Context;)Z
    .locals 3
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isEmergencyMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Mms/SAirMessage"

    const-string v2, "emergency mode on.. ignore delay sending..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableDelaySending(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getDelaySendingLength(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/bstairmessage/SAirMessage;->mDelaySendingLength:I

    :goto_1
    iget v1, p0, Lcom/android/mms/bstairmessage/SAirMessage;->mDelaySendingLength:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iput v0, p0, Lcom/android/mms/bstairmessage/SAirMessage;->mDelaySendingLength:I

    goto :goto_1
.end method
