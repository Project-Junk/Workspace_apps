.class final Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment$2;
.super Ljava/lang/Object;
.source "SafeQuestionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;Landroid/widget/EditText;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment$2;->b:Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;

    iput-object p2, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment$2;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment$2;->b:Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;

    invoke-virtual {v0}, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment$2;->a:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method
