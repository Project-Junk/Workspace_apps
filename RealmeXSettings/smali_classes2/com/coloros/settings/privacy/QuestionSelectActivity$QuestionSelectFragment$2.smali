.class final Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment$2;
.super Ljava/lang/Object;
.source "QuestionSelectActivity.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment$2;->a:Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    if-eqz p2, :cond_0

    .line 169
    check-cast p2, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p2, ""

    .line 172
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 173
    iget-object p1, p0, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment$2;->a:Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;

    invoke-static {p1}, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;->a(Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;)I

    .line 174
    iget-object p1, p0, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment$2;->a:Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;

    invoke-static {p1, p2}, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;->a(Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 175
    iget-object p1, p0, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment$2;->a:Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;

    invoke-static {p1}, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;->b(Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;)V

    .line 176
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 177
    iget-object p2, p0, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment$2;->a:Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;

    invoke-static {p2}, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;->c(Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;)I

    move-result p2

    const-string v0, "question_result_type"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 178
    iget-object p2, p0, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment$2;->a:Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;

    invoke-static {p2}, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;->d(Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "question_result_detail"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    iget-object p2, p0, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment$2;->a:Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;

    invoke-virtual {p2}, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/4 v0, -0x1

    invoke-virtual {p2, v0, p1}, Landroidx/fragment/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 180
    iget-object p1, p0, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment$2;->a:Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;

    invoke-virtual {p1}, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
