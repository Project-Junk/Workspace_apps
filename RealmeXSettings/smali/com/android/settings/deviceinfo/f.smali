.class public final Lcom/android/settings/deviceinfo/f;
.super Lcom/android/settingslib/core/a;
.source "SafetyInfoPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# static fields
.field private static final a:Landroid/content/Intent;


# instance fields
.field private final b:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SHOW_SAFETY_AND_REGULATORY_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/deviceinfo/f;->a:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 35
    iget-object p1, p0, Lcom/android/settings/deviceinfo/f;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/f;->b:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "safety_info"

    return-object v0
.end method

.method public final isAvailable()Z
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/android/settings/deviceinfo/f;->b:Landroid/content/pm/PackageManager;

    sget-object v1, Lcom/android/settings/deviceinfo/f;->a:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method
