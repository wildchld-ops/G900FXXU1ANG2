.class final Lcom/samsung/dialer/util/CallLogUtil$3;
.super Ljava/lang/Object;
.source "CallLogUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dialer/util/CallLogUtil;->sendSpamReport(Landroid/content/Context;Ljava/lang/String;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$mContext:Landroid/content/Context;

.field final synthetic val$spamNumber:Ljava/lang/String;

.field final synthetic val$spamType:Ljava/lang/String;

.field final synthetic val$spamtime:J

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JLandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/util/CallLogUtil$3;->val$uri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/samsung/dialer/util/CallLogUtil$3;->val$spamType:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/dialer/util/CallLogUtil$3;->val$spamNumber:Ljava/lang/String;

    iput-wide p4, p0, Lcom/samsung/dialer/util/CallLogUtil$3;->val$spamtime:J

    iput-object p6, p0, Lcom/samsung/dialer/util/CallLogUtil$3;->val$mContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RESPOND_VIA_MESSAGE"

    iget-object v2, p0, Lcom/samsung/dialer/util/CallLogUtil$3;->val$uri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "type"

    iget-object v2, p0, Lcom/samsung/dialer/util/CallLogUtil$3;->val$spamType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "number"

    iget-object v2, p0, Lcom/samsung/dialer/util/CallLogUtil$3;->val$spamNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "time"

    iget-wide v2, p0, Lcom/samsung/dialer/util/CallLogUtil$3;->val$spamtime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "SpamReport"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/dialer/util/CallLogUtil$3;->val$mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
