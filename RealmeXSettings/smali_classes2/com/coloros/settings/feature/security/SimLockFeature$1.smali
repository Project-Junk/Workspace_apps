.class final Lcom/coloros/settings/feature/security/SimLockFeature$1;
.super Ljava/lang/Object;
.source "SimLockFeature.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/security/SimLockFeature;->onCreate(Lcom/android/settings/IccLockSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/IccLockSettings;

.field final synthetic b:Lcom/coloros/settings/feature/security/SimLockFeature;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/security/SimLockFeature;Lcom/android/settings/IccLockSettings;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/coloros/settings/feature/security/SimLockFeature$1;->b:Lcom/coloros/settings/feature/security/SimLockFeature;

    iput-object p2, p0, Lcom/coloros/settings/feature/security/SimLockFeature$1;->a:Lcom/android/settings/IccLockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 71
    iget-object p1, p0, Lcom/coloros/settings/feature/security/SimLockFeature$1;->a:Lcom/android/settings/IccLockSettings;

    const/4 v0, 0x2

    iput v0, p1, Lcom/android/settings/IccLockSettings;->a:I

    .line 72
    invoke-virtual {p1}, Lcom/android/settings/IccLockSettings;->a()V

    const/4 p1, 0x0

    return p1
.end method
