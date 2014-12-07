.class Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView$1;
.super Ljava/lang/Object;
.source "PeopleDetailsProfileInfoView.java"

# interfaces
.implements Lcom/google/android/finsky/utils/GPlusUtils$GetCirclesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView$1;->this$0:Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;

    iput-object p2, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView$1;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCirclesLoaded(Ljava/util/ArrayList;)V
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

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView$1;->this$0:Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;

    # setter for: Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mCircles:Ljava/util/ArrayList;
    invoke-static {v0, p1}, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->access$002(Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView$1;->this$0:Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;

    # getter for: Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mCircleStatusButton:Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;
    invoke-static {v0}, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->access$100(Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;)Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView$1;->val$title:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView$1;->this$0:Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;

    # getter for: Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mCircles:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->access$000(Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView$1;->this$0:Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;->configure(Ljava/lang/String;Ljava/util/List;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCirclesLoadedFailed()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView$1;->this$0:Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    # setter for: Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mCircles:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->access$002(Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView$1;->this$0:Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;

    # getter for: Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mCircleStatusButton:Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;
    invoke-static {v0}, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->access$100(Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;)Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView$1;->val$title:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView$1;->this$0:Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;

    # getter for: Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mCircles:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->access$000(Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView$1;->this$0:Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;->configure(Ljava/lang/String;Ljava/util/List;Landroid/view/View$OnClickListener;)V

    return-void
.end method
