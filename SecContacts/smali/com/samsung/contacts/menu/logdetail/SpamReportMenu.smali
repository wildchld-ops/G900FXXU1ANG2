.class public Lcom/samsung/contacts/menu/logdetail/SpamReportMenu;
.super Lcom/samsung/contacts/menu/OptionMenu;
.source "SpamReportMenu.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/menu/OptionMenu;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/contacts/menu/OptionMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/CallDetailActivity;

    iget-object v1, v0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    iget v2, v0, Lcom/android/dialer/CallDetailActivity;->mLogType:I

    iget-wide v3, v0, Lcom/android/dialer/CallDetailActivity;->mTime:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/dialer/util/CallLogUtil;->sendSpamReport(Landroid/content/Context;Ljava/lang/String;IJ)V

    const/4 v1, 0x1

    return v1
.end method
