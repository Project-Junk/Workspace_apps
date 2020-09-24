.class final Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment$1;
.super Ljava/lang/Object;
.source "QuestionSelectActivity.java"

# interfaces
.implements Landroidx/preference/EditTextPreference$OnBindEditTextListener;


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

    .line 150
    iput-object p1, p0, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment$1;->a:Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBindEditText(Landroid/widget/EditText;)V
    .locals 4
    .param p1    # Landroid/widget/EditText;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 153
    new-array v0, v0, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    iget-object v2, p0, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment$1;->a:Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;

    .line 154
    invoke-virtual {v2}, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 153
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method
