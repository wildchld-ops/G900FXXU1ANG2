.class Lcom/google/android/vending/verifier/PackageVerificationService$2;
.super Ljava/lang/Object;
.source "PackageVerificationService.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/vending/verifier/PackageVerificationService;->sendVerificationRequest(Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/vending/verifier/api/PackageVerificationResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/vending/verifier/PackageVerificationService;

.field final synthetic val$state:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;


# direct methods
.method constructor <init>(Lcom/google/android/vending/verifier/PackageVerificationService;Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/vending/verifier/PackageVerificationService$2;->this$0:Lcom/google/android/vending/verifier/PackageVerificationService;

    iput-object p2, p0, Lcom/google/android/vending/verifier/PackageVerificationService$2;->val$state:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/vending/verifier/api/PackageVerificationResult;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    const-string v1, "Verification id=%d response=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/vending/verifier/PackageVerificationService$2;->val$state:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    iget v3, v3, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget v3, p1, Lcom/google/android/vending/verifier/api/PackageVerificationResult;->verdict:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/vending/verifier/PackageVerificationService$2;->this$0:Lcom/google/android/vending/verifier/PackageVerificationService;

    iget-object v1, p0, Lcom/google/android/vending/verifier/PackageVerificationService$2;->val$state:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    iget-object v2, p1, Lcom/google/android/vending/verifier/api/PackageVerificationResult;->token:[B

    iput-object v2, v1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mToken:[B

    iget v1, p1, Lcom/google/android/vending/verifier/api/PackageVerificationResult;->verdict:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    iget-object v1, p0, Lcom/google/android/vending/verifier/PackageVerificationService$2;->val$state:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    iput v4, v1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mResult:I

    iget-object v1, p0, Lcom/google/android/vending/verifier/PackageVerificationService$2;->this$0:Lcom/google/android/vending/verifier/PackageVerificationService;

    iget-object v2, p0, Lcom/google/android/vending/verifier/PackageVerificationService$2;->val$state:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    # invokes: Lcom/google/android/vending/verifier/PackageVerificationService;->reportAndCleanup(Landroid/content/Context;Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V
    invoke-static {v1, v0, v2}, Lcom/google/android/vending/verifier/PackageVerificationService;->access$600(Lcom/google/android/vending/verifier/PackageVerificationService;Landroid/content/Context;Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/google/android/vending/verifier/PackageVerificationService$2;->val$state:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    iget-object v2, p1, Lcom/google/android/vending/verifier/api/PackageVerificationResult;->description:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mDescription:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/vending/verifier/PackageVerificationService$2;->val$state:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    iput v5, v1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mResult:I

    iget-object v1, p0, Lcom/google/android/vending/verifier/PackageVerificationService$2;->this$0:Lcom/google/android/vending/verifier/PackageVerificationService;

    iget-object v2, p0, Lcom/google/android/vending/verifier/PackageVerificationService$2;->val$state:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    iget-object v3, p0, Lcom/google/android/vending/verifier/PackageVerificationService$2;->val$state:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    iget v3, v3, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mResult:I

    # invokes: Lcom/google/android/vending/verifier/PackageVerificationService;->reportResult(Landroid/content/Context;Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;I)V
    invoke-static {v1, v0, v2, v3}, Lcom/google/android/vending/verifier/PackageVerificationService;->access$700(Lcom/google/android/vending/verifier/PackageVerificationService;Landroid/content/Context;Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;I)V

    iget-object v1, p0, Lcom/google/android/vending/verifier/PackageVerificationService$2;->val$state:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    iget v1, v1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->id:I

    iget-object v2, p0, Lcom/google/android/vending/verifier/PackageVerificationService$2;->val$state:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    iget-object v2, v2, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mLabel:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/vending/verifier/PackageVerificationService$2;->val$state:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    iget-object v3, v3, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mDescription:Ljava/lang/String;

    invoke-static {v0, v1, v4, v2, v3}, Lcom/google/android/vending/verifier/PackageWarningDialog;->show(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/google/android/vending/verifier/PackageVerificationService$2;->val$state:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    iget-object v2, p1, Lcom/google/android/vending/verifier/api/PackageVerificationResult;->description:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mDescription:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/vending/verifier/PackageVerificationService$2;->val$state:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    iget-boolean v1, v1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->fromVerificationActivity:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/vending/verifier/PackageVerificationService$2;->this$0:Lcom/google/android/vending/verifier/PackageVerificationService;

    iget-object v2, p0, Lcom/google/android/vending/verifier/PackageVerificationService$2;->val$state:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    iget v2, v2, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->id:I

    # invokes: Lcom/google/android/vending/verifier/PackageVerificationService;->extendTimeout(II)V
    invoke-static {v1, v2, v5}, Lcom/google/android/vending/verifier/PackageVerificationService;->access$500(Lcom/google/android/vending/verifier/PackageVerificationService;II)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/vending/verifier/PackageVerificationService$2;->val$state:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    iget v1, v1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->id:I

    iget-object v2, p0, Lcom/google/android/vending/verifier/PackageVerificationService$2;->val$state:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    iget-object v2, v2, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mLabel:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/vending/verifier/PackageVerificationService$2;->val$state:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    iget-object v3, v3, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mDescription:Ljava/lang/String;

    invoke-static {v0, v1, v6, v2, v3}, Lcom/google/android/vending/verifier/PackageWarningDialog;->show(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/vending/verifier/api/PackageVerificationResult;

    invoke-virtual {p0, p1}, Lcom/google/android/vending/verifier/PackageVerificationService$2;->onResponse(Lcom/google/android/vending/verifier/api/PackageVerificationResult;)V

    return-void
.end method
