.class Lcom/android/incallui/service/IncomingPopupService$7;
.super Ljava/lang/Object;
.source "IncomingPopupService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/service/IncomingPopupService;->showCallRoamingGuardDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/IncomingPopupService;


# direct methods
.method constructor <init>(Lcom/android/incallui/service/IncomingPopupService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/service/IncomingPopupService$7;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService$7;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    # invokes: Lcom/android/incallui/service/IncomingPopupService;->dismissCallRoamingGuardDialog()V
    invoke-static {v0}, Lcom/android/incallui/service/IncomingPopupService;->access$1600(Lcom/android/incallui/service/IncomingPopupService;)V

    return-void
.end method
