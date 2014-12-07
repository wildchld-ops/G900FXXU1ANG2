.class public Lcom/google/android/finsky/utils/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field private static final DEVICE_DISPLAY_FORMAT:Ljava/text/DateFormat;

.field private static final DEVICE_DISPLAY_FORMAT_SHORT:Ljava/text/DateFormat;

.field private static final ISO8601_DATE_FORMAT:Ljava/text/DateFormat;

.field private static final UTC_DISPLAY_FORMAT_SHORT:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/google/android/finsky/utils/DateUtils;->ISO8601_DATE_FORMAT:Ljava/text/DateFormat;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    sput-object v1, Lcom/google/android/finsky/utils/DateUtils;->DEVICE_DISPLAY_FORMAT:Ljava/text/DateFormat;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    sput-object v1, Lcom/google/android/finsky/utils/DateUtils;->DEVICE_DISPLAY_FORMAT_SHORT:Ljava/text/DateFormat;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    sput-object v1, Lcom/google/android/finsky/utils/DateUtils;->UTC_DISPLAY_FORMAT_SHORT:Ljava/text/DateFormat;

    sget-object v1, Lcom/google/android/finsky/utils/DateUtils;->UTC_DISPLAY_FORMAT_SHORT:Ljava/text/DateFormat;

    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public static declared-synchronized formatIso8601Date(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const-class v3, Lcom/google/android/finsky/utils/DateUtils;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/google/android/finsky/utils/DateUtils;->ISO8601_DATE_FORMAT:Ljava/text/DateFormat;

    invoke-virtual {v2, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    sget-object v2, Lcom/google/android/finsky/utils/DateUtils;->DEVICE_DISPLAY_FORMAT:Ljava/text/DateFormat;

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p0

    :cond_0
    monitor-exit v3

    return-object p0

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "^\\d\\d\\d\\d$"

    invoke-static {v2, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized formatShortDisplayDate(J)Ljava/lang/String;
    .locals 3

    const-class v1, Lcom/google/android/finsky/utils/DateUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/finsky/utils/DateUtils;->DEVICE_DISPLAY_FORMAT_SHORT:Ljava/text/DateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized formatShortDisplayDateUtc(J)Ljava/lang/String;
    .locals 3

    const-class v1, Lcom/google/android/finsky/utils/DateUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/finsky/utils/DateUtils;->UTC_DISPLAY_FORMAT_SHORT:Ljava/text/DateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
