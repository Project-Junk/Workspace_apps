.class public Lcom/coloros/settings/feature/security/controller/FeedbackLogFooterController;
.super Lcom/android/settings/core/a;
.source "FeedbackLogFooterController.java"


# static fields
.field private static final KEY_OPPO_FEEDBACK_LOG_FOOTER:Ljava/lang/String; = "oppo_feedback_log_footer"

.field private static final TAG:Ljava/lang/String; = "FeedbackLogFooterController"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "oppo_feedback_log_footer"

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 40
    invoke-static {}, Lcom/coloros/settings/utils/as;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 5

    .line 45
    iget-object v0, p0, Lcom/coloros/settings/feature/security/controller/FeedbackLogFooterController;->mContext:Landroid/content/Context;

    const v1, 0x7f1204e1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 46
    new-instance v1, Landroid/text/SpannableString;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/coloros/settings/feature/security/controller/FeedbackLogFooterController;->mContext:Landroid/content/Context;

    const v4, 0x7f120f5e

    .line 47
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 48
    new-instance v2, Lcom/color/support/widget/ColorClickableSpan;

    iget-object v3, p0, Lcom/coloros/settings/feature/security/controller/FeedbackLogFooterController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/color/support/widget/ColorClickableSpan;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v3, Lcom/coloros/settings/feature/security/controller/-$$Lambda$FeedbackLogFooterController$0wWf45psMIye7ejDnIvh9eE9oCY;

    invoke-direct {v3, p0}, Lcom/coloros/settings/feature/security/controller/-$$Lambda$FeedbackLogFooterController$0wWf45psMIye7ejDnIvh9eE9oCY;-><init>(Lcom/coloros/settings/feature/security/controller/FeedbackLogFooterController;)V

    invoke-virtual {v2, v3}, Lcom/color/support/widget/ColorClickableSpan;->setStatusBarClickListener(Lcom/color/support/widget/ColorClickableSpan$SpannableStrClickListener;)V

    .line 59
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v3, v0

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v0

    const/16 v4, 0x21

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v1
.end method

.method public synthetic lambda$getSummary$0$FeedbackLogFooterController()V
    .locals 3

    .line 50
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.coloros.bootreg.activity.statementpage"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "statement_intent_flag"

    const/4 v2, 0x4

    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/coloros/settings/feature/security/controller/FeedbackLogFooterController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v0, "FeedbackLogFooterController"

    const-string v1, "onClick ActivityNotFoundException action: com.coloros.bootreg.activity.statementpage"

    .line 55
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
