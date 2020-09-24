.class final Lcom/android/settings/accounts/e$a;
.super Ljava/lang/Object;
.source "AccountTypePreferenceLoader.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/accounts/e;

.field private final b:Ljava/lang/String;

.field private final c:I


# direct methods
.method public constructor <init>(Lcom/android/settings/accounts/e;Ljava/lang/String;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/android/settings/accounts/e$a;->a:Lcom/android/settings/accounts/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput-object p2, p0, Lcom/android/settings/accounts/e$a;->b:Ljava/lang/String;

    const p1, 0x7f120c33

    .line 230
    iput p1, p0, Lcom/android/settings/accounts/e$a;->c:I

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 235
    iget-object v0, p0, Lcom/android/settings/accounts/e$a;->a:Lcom/android/settings/accounts/e;

    .line 1052
    iget-object v0, v0, Lcom/android/settings/accounts/e;->b:Landroidx/preference/PreferenceFragmentCompat;

    .line 235
    instance-of v0, v0, Lcom/android/settingslib/core/instrumentation/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accounts/e$a;->a:Lcom/android/settings/accounts/e;

    .line 2052
    iget-object v0, v0, Lcom/android/settings/accounts/e;->b:Landroidx/preference/PreferenceFragmentCompat;

    .line 236
    check-cast v0, Lcom/android/settingslib/core/instrumentation/b;

    invoke-interface {v0}, Lcom/android/settingslib/core/instrumentation/b;->getMetricsCategory()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 238
    :goto_0
    new-instance v1, Lcom/android/settings/core/f;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    iget p1, p0, Lcom/android/settings/accounts/e$a;->c:I

    const/4 v2, 0x0

    .line 2063
    invoke-virtual {v1, v2, p1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 239
    iget-object v1, p0, Lcom/android/settings/accounts/e$a;->b:Ljava/lang/String;

    .line 240
    invoke-virtual {p1, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object p1

    .line 241
    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 242
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    .line 246
    iget-object p1, p0, Lcom/android/settings/accounts/e$a;->b:Ljava/lang/String;

    const-class v0, Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 247
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.settings.accounts.LAUNCHING_LOCATION_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/android/settings/accounts/e$a;->a:Lcom/android/settings/accounts/e;

    .line 3052
    iget-object v0, v0, Lcom/android/settings/accounts/e;->b:Landroidx/preference/PreferenceFragmentCompat;

    .line 248
    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
