.class public abstract Lcom/color/eyeprotect/ui/a/a;
.super Lcom/color/support/preference/e;


# instance fields
.field public a:Lcom/color/eyeprotect/ui/widget/a;

.field public b:Z

.field private c:Landroidx/recyclerview/widget/RecyclerView$a;

.field private d:Z

.field private e:Landroidx/recyclerview/widget/RecyclerView$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/color/support/preference/e;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/eyeprotect/ui/a/a;->b:Z

    iput-boolean v0, p0, Lcom/color/eyeprotect/ui/a/a;->d:Z

    new-instance v0, Lcom/color/eyeprotect/ui/a/a$1;

    invoke-direct {v0, p0}, Lcom/color/eyeprotect/ui/a/a$1;-><init>(Lcom/color/eyeprotect/ui/a/a;)V

    iput-object v0, p0, Lcom/color/eyeprotect/ui/a/a;->e:Landroidx/recyclerview/widget/RecyclerView$c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-virtual {p0}, Lcom/color/eyeprotect/ui/a/a;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/color/eyeprotect/ui/a/a;->a:Lcom/color/eyeprotect/ui/widget/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/color/eyeprotect/ui/a/a;->a:Lcom/color/eyeprotect/ui/widget/a;

    invoke-virtual {p0}, Lcom/color/eyeprotect/ui/a/a;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/color/eyeprotect/ui/a/a;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/color/eyeprotect/ui/widget/a;->a(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    iget-boolean v0, p0, Lcom/color/eyeprotect/ui/a/a;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/color/eyeprotect/ui/a/a;->c:Landroidx/recyclerview/widget/RecyclerView$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/eyeprotect/ui/a/a;->c:Landroidx/recyclerview/widget/RecyclerView$a;

    iget-object v1, p0, Lcom/color/eyeprotect/ui/a/a;->e:Landroidx/recyclerview/widget/RecyclerView$c;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$a;->b(Landroidx/recyclerview/widget/RecyclerView$c;)V

    :cond_0
    invoke-virtual {p0}, Lcom/color/eyeprotect/ui/a/a;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    iput-object v0, p0, Lcom/color/eyeprotect/ui/a/a;->c:Landroidx/recyclerview/widget/RecyclerView$a;

    iget-object v0, p0, Lcom/color/eyeprotect/ui/a/a;->c:Landroidx/recyclerview/widget/RecyclerView$a;

    iget-object v1, p0, Lcom/color/eyeprotect/ui/a/a;->e:Landroidx/recyclerview/widget/RecyclerView$c;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$a;->a(Landroidx/recyclerview/widget/RecyclerView$c;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/eyeprotect/ui/a/a;->d:Z

    invoke-virtual {p0}, Lcom/color/eyeprotect/ui/a/a;->a()V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 2

    iget-boolean v0, p0, Lcom/color/eyeprotect/ui/a/a;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/color/eyeprotect/ui/a/a;->c:Landroidx/recyclerview/widget/RecyclerView$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/eyeprotect/ui/a/a;->c:Landroidx/recyclerview/widget/RecyclerView$a;

    iget-object v1, p0, Lcom/color/eyeprotect/ui/a/a;->e:Landroidx/recyclerview/widget/RecyclerView$c;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$a;->b(Landroidx/recyclerview/widget/RecyclerView$c;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/color/eyeprotect/ui/a/a;->c:Landroidx/recyclerview/widget/RecyclerView$a;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/eyeprotect/ui/a/a;->d:Z

    :cond_1
    return-void
.end method

.method protected onBindPreferences()V
    .locals 0

    invoke-virtual {p0}, Lcom/color/eyeprotect/ui/a/a;->b()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/color/support/preference/e;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "android:preference_highlighted"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/color/eyeprotect/ui/a/a;->b:Z

    :cond_0
    return-void
.end method

.method protected onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$a;
    .locals 4

    invoke-virtual {p0}, Lcom/color/eyeprotect/ui/a/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    const-string v2, ":settings:fragment_args_key"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lcom/color/eyeprotect/ui/a/a;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_2
    move-object v0, v1

    goto :goto_3

    :cond_2
    const-string v1, ":settings:fragment_args_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    :goto_3
    new-instance v1, Lcom/color/eyeprotect/ui/widget/a;

    iget-boolean v2, p0, Lcom/color/eyeprotect/ui/a/a;->b:Z

    invoke-direct {v1, p1, v0, v2}, Lcom/color/eyeprotect/ui/widget/a;-><init>(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/color/eyeprotect/ui/a/a;->a:Lcom/color/eyeprotect/ui/widget/a;

    iget-object p0, p0, Lcom/color/eyeprotect/ui/a/a;->a:Lcom/color/eyeprotect/ui/widget/a;

    return-object p0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/color/support/preference/e;->onResume()V

    invoke-virtual {p0}, Lcom/color/eyeprotect/ui/a/a;->a()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/color/support/preference/e;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/color/eyeprotect/ui/a/a;->a:Lcom/color/eyeprotect/ui/widget/a;

    if-eqz v0, :cond_0

    const-string v0, "android:preference_highlighted"

    iget-object p0, p0, Lcom/color/eyeprotect/ui/a/a;->a:Lcom/color/eyeprotect/ui/widget/a;

    invoke-virtual {p0}, Lcom/color/eyeprotect/ui/widget/a;->f()Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method protected onUnbindPreferences()V
    .locals 0

    invoke-virtual {p0}, Lcom/color/eyeprotect/ui/a/a;->c()V

    return-void
.end method
