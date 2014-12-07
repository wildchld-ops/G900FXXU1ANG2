.class Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;
.super Ljava/lang/Object;
.source "PeopleActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/PeopleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabPagerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/PeopleActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/PeopleActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1    # I
    .param p2    # F
    .param p3    # I

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1    # I

    const-string v0, "PeopleActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageSelected, position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # invokes: Lcom/android/contacts/activities/PeopleActivity;->finishActionModeAllFragments()V
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$200(Lcom/android/contacts/activities/PeopleActivity;)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerAdapter:Lcom/samsung/contacts/activities/TabPagerAdapter;

    invoke-virtual {v0}, Lcom/samsung/contacts/activities/TabPagerAdapter;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setCurrentTab(IZ)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # invokes: Lcom/android/contacts/activities/PeopleActivity;->showEmptyStateForTab(I)V
    invoke-static {v0, p1}, Lcom/android/contacts/activities/PeopleActivity;->access$300(Lcom/android/contacts/activities/PeopleActivity;I)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v0, p1}, Lcom/android/contacts/activities/PeopleActivity;->updateActionBarCustomView(I)V

    sget v0, Lcom/samsung/contacts/activities/ContactsTab;->DIALER:I

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v0}, Lcom/android/dialer/dialpad/DialpadFragment;->inflateDialpad()Z

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mVoLTEStateTrackerImpl:Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$400(Lcom/android/contacts/activities/PeopleActivity;)Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;->invalidate()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_1
    return-void

    :cond_2
    sget v0, Lcom/samsung/contacts/activities/ContactsTab;->CALLLOG:I

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogFragment;->resetMissedCall()V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogFragment;->showSwipePopup()V

    goto :goto_0

    :cond_3
    sget v0, Lcom/samsung/contacts/activities/ContactsTab;->ALL:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-static {v0}, Lcom/samsung/contacts/impl/NearPlaceProviderManager;->startService(Landroid/content/Context;)V

    goto :goto_0
.end method
