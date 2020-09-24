.class public final Lcom/android/settings/enterprise/p$a;
.super Landroid/text/style/ClickableSpan;
.source "EnterprisePrivacyFeatureProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/enterprise/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 319
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 320
    iput-object p1, p0, Lcom/android/settings/enterprise/p$a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 331
    instance-of v0, p1, Lcom/android/settings/enterprise/p$a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/settings/enterprise/p$a;

    iget-object p1, p1, Lcom/android/settings/enterprise/p$a;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/enterprise/p$a;->a:Landroid/content/Context;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 325
    iget-object p1, p0, Lcom/android/settings/enterprise/p$a;->a:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ENTERPRISE_PRIVACY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 326
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 325
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
