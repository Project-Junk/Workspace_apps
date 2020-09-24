.class public final Lcom/android/settings/security/g;
.super Ljava/lang/Object;
.source "SecurityFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/security/f;


# instance fields
.field private a:Lcom/android/settings/security/trustagent/b;

.field private b:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/android/settings/security/g;->b:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/security/g;->b:Lcom/android/internal/widget/LockPatternUtils;

    .line 43
    :cond_0
    iget-object p1, p0, Lcom/android/settings/security/g;->b:Lcom/android/internal/widget/LockPatternUtils;

    return-object p1
.end method

.method public final a()Lcom/android/settings/security/trustagent/b;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/android/settings/security/g;->a:Lcom/android/settings/security/trustagent/b;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/android/settings/security/trustagent/b;

    invoke-direct {v0}, Lcom/android/settings/security/trustagent/b;-><init>()V

    iput-object v0, p0, Lcom/android/settings/security/g;->a:Lcom/android/settings/security/trustagent/b;

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/android/settings/security/g;->a:Lcom/android/settings/security/trustagent/b;

    return-object v0
.end method
