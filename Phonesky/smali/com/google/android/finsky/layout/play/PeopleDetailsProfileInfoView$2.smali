.class Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView$2;
.super Ljava/lang/Object;
.source "PeopleDetailsProfileInfoView.java"

# interfaces
.implements Lcom/google/android/finsky/utils/GPlusUtils$CirclePickerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView$2;->this$0:Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCirclesSelected(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/people/data/AudienceMember;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView$2;->this$0:Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;

    # setter for: Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mCircles:Ljava/util/ArrayList;
    invoke-static {v0, p1}, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->access$002(Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView$2;->this$0:Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;

    # getter for: Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mCircleStatusButton:Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;
    invoke-static {v0}, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->access$100(Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;)Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView$2;->this$0:Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;

    # getter for: Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mPlusDoc:Lcom/google/android/finsky/api/model/Document;
    invoke-static {v1}, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->access$200(Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;)Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView$2;->this$0:Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;

    # getter for: Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mCircles:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->access$000(Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView$2;->this$0:Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;->configure(Ljava/lang/String;Ljava/util/List;Landroid/view/View$OnClickListener;)V

    return-void
.end method
