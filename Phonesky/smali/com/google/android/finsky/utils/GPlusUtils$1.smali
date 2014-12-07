.class final Lcom/google/android/finsky/utils/GPlusUtils$1;
.super Ljava/lang/Object;
.source "GPlusUtils.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/GPlusUtils;->checkGPlusAndLaunchCirclePicker(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/util/ArrayList;Lcom/google/android/finsky/utils/GPlusUtils$CirclePickerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/protos/PlusProfile$PlusProfileResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/support/v4/app/FragmentActivity;

.field final synthetic val$circlePickerListner:Lcom/google/android/finsky/utils/GPlusUtils$CirclePickerListener;

.field final synthetic val$intialSelectedCircles:Ljava/util/ArrayList;

.field final synthetic val$userToAddObfuscatedGaiaId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/util/ArrayList;Lcom/google/android/finsky/utils/GPlusUtils$CirclePickerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/utils/GPlusUtils$1;->val$activity:Landroid/support/v4/app/FragmentActivity;

    iput-object p2, p0, Lcom/google/android/finsky/utils/GPlusUtils$1;->val$userToAddObfuscatedGaiaId:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/finsky/utils/GPlusUtils$1;->val$intialSelectedCircles:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/google/android/finsky/utils/GPlusUtils$1;->val$circlePickerListner:Lcom/google/android/finsky/utils/GPlusUtils$CirclePickerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/protos/PlusProfile$PlusProfileResponse;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/finsky/utils/GPlusUtils$1;->val$activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/google/android/finsky/protos/PlusProfile$PlusProfileResponse;->partialUserProfile:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/utils/GPlusUtils$1;->val$activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/utils/GPlusDialogsHelper;->showGPlusSignUpDialog(Landroid/support/v4/app/FragmentManager;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/utils/GPlusUtils$1;->val$activity:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/google/android/finsky/utils/GPlusUtils$1;->val$userToAddObfuscatedGaiaId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/utils/GPlusUtils$1;->val$intialSelectedCircles:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/finsky/utils/GPlusUtils$1;->val$circlePickerListner:Lcom/google/android/finsky/utils/GPlusUtils$CirclePickerListener;

    # invokes: Lcom/google/android/finsky/utils/GPlusUtils;->launchCirclePicker(Landroid/app/Activity;Ljava/lang/String;Ljava/util/ArrayList;Lcom/google/android/finsky/utils/GPlusUtils$CirclePickerListener;)V
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/finsky/utils/GPlusUtils;->access$000(Landroid/app/Activity;Ljava/lang/String;Ljava/util/ArrayList;Lcom/google/android/finsky/utils/GPlusUtils$CirclePickerListener;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/finsky/protos/PlusProfile$PlusProfileResponse;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/utils/GPlusUtils$1;->onResponse(Lcom/google/android/finsky/protos/PlusProfile$PlusProfileResponse;)V

    return-void
.end method
