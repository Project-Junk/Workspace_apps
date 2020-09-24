.class final Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1;
.super La/b/b/a/j;

# interfaces
.implements La/d/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/b/b/a/j;",
        "La/d/a/m<",
        "Lb/a/s;",
        "La/b/c<",
        "-",
        "La/r;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $isCheck:Z

.field label:I

.field private p$:Lb/a/s;

.field final synthetic this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;


# direct methods
.method constructor <init>(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;ZLa/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;

    iput-boolean p2, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1;->$isCheck:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, La/b/b/a/j;-><init>(ILa/b/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;La/b/c;)La/b/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "La/b/c<",
            "*>;)",
            "La/b/c<",
            "La/r;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1;

    iget-object v1, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;

    iget-boolean p0, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1;->$isCheck:Z

    invoke-direct {v0, v1, p0, p2}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1;-><init>(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;ZLa/b/c;)V

    check-cast p1, Lb/a/s;

    iput-object p1, v0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1;->p$:Lb/a/s;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, La/b/c;

    invoke-virtual {p0, p1, p2}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1;->create(Ljava/lang/Object;La/b/c;)La/b/c;

    move-result-object p0

    check-cast p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1;

    sget-object p1, La/r;->a:La/r;

    invoke-virtual {p0, p1}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, La/b/a/b;->a()Ljava/lang/Object;

    iget v0, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1;->label:I

    if-nez v0, :cond_7

    invoke-static {p1}, La/l;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1;->p$:Lb/a/s;

    iget-object v0, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;

    iget-object v0, v0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;

    iget-object v0, v0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-virtual {v0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;

    iget-object v0, v0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;

    iget-object v0, v0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-virtual {v0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;

    iget-object v0, v0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;

    iget-object v0, v0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-static {v0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->access$getMJob$p(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;)Lb/a/ap;

    move-result-object v0

    invoke-interface {v0}, Lb/a/ap;->h()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;

    iget-object v0, v0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;

    iget-object v0, v0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-virtual {v0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;

    iget-object v0, v0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;

    iget-object v0, v0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-virtual {v0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, La/d/b/g;->a()V

    :cond_0
    const-string v1, "activity!!"

    invoke-static {v0, v1}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;

    iget-object v0, v0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;

    iget-object v0, v0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-virtual {v0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, La/d/b/g;->a()V

    :cond_1
    const-string v1, "activity!!"

    invoke-static {v0, v1}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1}, Lb/a/t;->a(Lb/a/s;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_1

    :cond_2
    sget-object p1, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    iget-object v0, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;

    iget-object v0, v0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;->$contentResolver$inlined:Landroid/content/ContentResolver;

    invoke-virtual {p1, v0}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->getOpenAppList(Landroid/content/ContentResolver;)Ljava/util/Set;

    move-result-object p1

    sget-object v0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    iget-object v1, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;

    iget-object v1, v1, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;->$contentResolver$inlined:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->getClickAppList(Landroid/content/ContentResolver;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;

    iget-object v1, v1, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;->$packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;

    iget-object v1, v1, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;->$packageName:Ljava/lang/String;

    const-string v2, "packageName"

    invoke-static {v1, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    iget-object v2, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;

    iget-object v2, v2, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;->$contentResolver$inlined:Landroid/content/ContentResolver;

    invoke-virtual {v1, v2, v0}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->setClickAppList(Landroid/content/ContentResolver;Ljava/util/Set;)V

    :cond_3
    iget-boolean v0, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1;->$isCheck:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;

    iget-object v0, v0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;->$packageName:Ljava/lang/String;

    const-string v1, "packageName"

    invoke-static {v0, v1}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;

    iget-object v0, v0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;->$packageName:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_0
    sget-object v0, Lcom/color/darkmode/utils/StatisticsUtils;->INSTANCE:Lcom/color/darkmode/utils/StatisticsUtils;

    iget-object v1, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;

    iget-object v1, v1, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;

    iget-object v1, v1, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-virtual {v1}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-static {}, La/d/b/g;->a()V

    :cond_5
    const-string v2, "context!!"

    invoke-static {v1, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;

    iget-object v2, v2, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;->$packageName:Ljava/lang/String;

    const-string v3, "packageName"

    invoke-static {v2, v3}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1;->$isCheck:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/color/darkmode/utils/StatisticsUtils;->reportApplicationManager(Landroid/content/Context;Ljava/lang/String;Z)V

    sget-object v0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    iget-object v1, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;

    iget-object v1, v1, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;->$contentResolver$inlined:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1, p1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->setOpenAppList(Landroid/content/ContentResolver;Ljava/util/Set;)V

    iget-object p1, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;

    iget-object p1, p1, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;

    iget-object p1, p1, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-virtual {p1}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    new-instance v0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1$1;

    invoke-direct {v0, p0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1$1;-><init>(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    sget-object p0, La/r;->a:La/r;

    return-object p0

    :cond_6
    :goto_1
    sget-object p0, La/r;->a:La/r;

    return-object p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
