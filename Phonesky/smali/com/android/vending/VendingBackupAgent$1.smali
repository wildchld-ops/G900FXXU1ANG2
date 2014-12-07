.class Lcom/android/vending/VendingBackupAgent$1;
.super Ljava/lang/Object;
.source "VendingBackupAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/VendingBackupAgent;->onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/VendingBackupAgent;

.field final synthetic val$appStates:Lcom/google/android/finsky/appstate/AppStates;


# direct methods
.method constructor <init>(Lcom/android/vending/VendingBackupAgent;Lcom/google/android/finsky/appstate/AppStates;)V
    .locals 0

    iput-object p1, p0, Lcom/android/vending/VendingBackupAgent$1;->this$0:Lcom/android/vending/VendingBackupAgent;

    iput-object p2, p0, Lcom/android/vending/VendingBackupAgent$1;->val$appStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/vending/VendingBackupAgent$1;->val$appStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-static {v0}, Lcom/google/android/finsky/appstate/UpdateChecker;->migrateAutoUpdateSettings(Lcom/google/android/finsky/appstate/AppStates;)V

    return-void
.end method
