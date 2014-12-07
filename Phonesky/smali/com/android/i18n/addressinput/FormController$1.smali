.class Lcom/android/i18n/addressinput/FormController$1;
.super Ljava/lang/Object;
.source "FormController.java"

# interfaces
.implements Lcom/android/i18n/addressinput/DataLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/i18n/addressinput/FormController;->requestDataRecursively(Lcom/android/i18n/addressinput/LookupKey;Ljava/util/Queue;Lcom/android/i18n/addressinput/DataLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/i18n/addressinput/FormController;

.field final synthetic val$key:Lcom/android/i18n/addressinput/LookupKey;

.field final synthetic val$listener:Lcom/android/i18n/addressinput/DataLoadListener;

.field final synthetic val$subkeys:Ljava/util/Queue;


# direct methods
.method constructor <init>(Lcom/android/i18n/addressinput/FormController;Lcom/android/i18n/addressinput/LookupKey;Lcom/android/i18n/addressinput/DataLoadListener;Ljava/util/Queue;)V
    .locals 0

    iput-object p1, p0, Lcom/android/i18n/addressinput/FormController$1;->this$0:Lcom/android/i18n/addressinput/FormController;

    iput-object p2, p0, Lcom/android/i18n/addressinput/FormController$1;->val$key:Lcom/android/i18n/addressinput/LookupKey;

    iput-object p3, p0, Lcom/android/i18n/addressinput/FormController$1;->val$listener:Lcom/android/i18n/addressinput/DataLoadListener;

    iput-object p4, p0, Lcom/android/i18n/addressinput/FormController$1;->val$subkeys:Ljava/util/Queue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dataLoadingBegin()V
    .locals 0

    return-void
.end method

.method public dataLoadingEnd()V
    .locals 10

    iget-object v7, p0, Lcom/android/i18n/addressinput/FormController$1;->this$0:Lcom/android/i18n/addressinput/FormController;

    iget-object v8, p0, Lcom/android/i18n/addressinput/FormController$1;->val$key:Lcom/android/i18n/addressinput/LookupKey;

    invoke-virtual {v7, v8}, Lcom/android/i18n/addressinput/FormController;->getRegionData(Lcom/android/i18n/addressinput/LookupKey;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/i18n/addressinput/FormController$1;->val$listener:Lcom/android/i18n/addressinput/DataLoadListener;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/i18n/addressinput/FormController$1;->val$listener:Lcom/android/i18n/addressinput/DataLoadListener;

    invoke-interface {v7}, Lcom/android/i18n/addressinput/DataLoadListener;->dataLoadingEnd()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/android/i18n/addressinput/FormController$1;->val$subkeys:Ljava/util/Queue;

    invoke-interface {v7}, Ljava/util/Queue;->size()I

    move-result v7

    if-lez v7, :cond_3

    iget-object v7, p0, Lcom/android/i18n/addressinput/FormController$1;->val$subkeys:Ljava/util/Queue;

    invoke-interface {v7}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/i18n/addressinput/RegionData;

    invoke-virtual {v5, v4}, Lcom/android/i18n/addressinput/RegionData;->isValidName(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/i18n/addressinput/FormController$1;->this$0:Lcom/android/i18n/addressinput/FormController;

    iget-object v8, p0, Lcom/android/i18n/addressinput/FormController$1;->val$key:Lcom/android/i18n/addressinput/LookupKey;

    invoke-virtual {v5}, Lcom/android/i18n/addressinput/RegionData;->getKey()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/i18n/addressinput/FormController;->buildDataLookupKey(Lcom/android/i18n/addressinput/LookupKey;Ljava/lang/String;)Lcom/android/i18n/addressinput/LookupKey;
    invoke-static {v7, v8, v9}, Lcom/android/i18n/addressinput/FormController;->access$000(Lcom/android/i18n/addressinput/FormController;Lcom/android/i18n/addressinput/LookupKey;Ljava/lang/String;)Lcom/android/i18n/addressinput/LookupKey;

    move-result-object v3

    iget-object v7, p0, Lcom/android/i18n/addressinput/FormController$1;->this$0:Lcom/android/i18n/addressinput/FormController;

    iget-object v8, p0, Lcom/android/i18n/addressinput/FormController$1;->val$subkeys:Ljava/util/Queue;

    iget-object v9, p0, Lcom/android/i18n/addressinput/FormController$1;->val$listener:Lcom/android/i18n/addressinput/DataLoadListener;

    # invokes: Lcom/android/i18n/addressinput/FormController;->requestDataRecursively(Lcom/android/i18n/addressinput/LookupKey;Ljava/util/Queue;Lcom/android/i18n/addressinput/DataLoadListener;)V
    invoke-static {v7, v3, v8, v9}, Lcom/android/i18n/addressinput/FormController;->access$100(Lcom/android/i18n/addressinput/FormController;Lcom/android/i18n/addressinput/LookupKey;Ljava/util/Queue;Lcom/android/i18n/addressinput/DataLoadListener;)V

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/i18n/addressinput/RegionData;

    invoke-virtual {v7}, Lcom/android/i18n/addressinput/RegionData;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v7, p0, Lcom/android/i18n/addressinput/FormController$1;->this$0:Lcom/android/i18n/addressinput/FormController;

    iget-object v8, p0, Lcom/android/i18n/addressinput/FormController$1;->val$key:Lcom/android/i18n/addressinput/LookupKey;

    # invokes: Lcom/android/i18n/addressinput/FormController;->buildDataLookupKey(Lcom/android/i18n/addressinput/LookupKey;Ljava/lang/String;)Lcom/android/i18n/addressinput/LookupKey;
    invoke-static {v7, v8, v1}, Lcom/android/i18n/addressinput/FormController;->access$000(Lcom/android/i18n/addressinput/FormController;Lcom/android/i18n/addressinput/LookupKey;Ljava/lang/String;)Lcom/android/i18n/addressinput/LookupKey;

    move-result-object v3

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v7, p0, Lcom/android/i18n/addressinput/FormController$1;->this$0:Lcom/android/i18n/addressinput/FormController;

    iget-object v8, p0, Lcom/android/i18n/addressinput/FormController$1;->val$listener:Lcom/android/i18n/addressinput/DataLoadListener;

    # invokes: Lcom/android/i18n/addressinput/FormController;->requestDataRecursively(Lcom/android/i18n/addressinput/LookupKey;Ljava/util/Queue;Lcom/android/i18n/addressinput/DataLoadListener;)V
    invoke-static {v7, v3, v0, v8}, Lcom/android/i18n/addressinput/FormController;->access$100(Lcom/android/i18n/addressinput/FormController;Lcom/android/i18n/addressinput/LookupKey;Ljava/util/Queue;Lcom/android/i18n/addressinput/DataLoadListener;)V

    goto :goto_0
.end method
