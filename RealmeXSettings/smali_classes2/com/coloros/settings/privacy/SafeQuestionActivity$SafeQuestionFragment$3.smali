.class final Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment$3;
.super Ljava/lang/Object;
.source "SafeQuestionActivity.java"

# interfaces
.implements Lcom/coloros/settings/privacy/SafeQuestionActivity$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment$3;->a:Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 321
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 322
    iget-object p1, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment$3;->a:Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;

    invoke-static {p1, p2}, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->a(Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 323
    iget-object p1, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment$3;->a:Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;

    invoke-static {p1}, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->b(Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;)V

    .line 324
    iget-object p1, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment$3;->a:Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;

    invoke-virtual {p1}, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "20012"

    const-string p4, "pw_privacy_email"

    invoke-static {p1, p3, p4, p2}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
