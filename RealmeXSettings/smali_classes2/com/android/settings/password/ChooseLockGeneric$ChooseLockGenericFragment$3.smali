.class final Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$3;
.super Ljava/lang/Object;
.source "ChooseLockGeneric.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;)V
    .locals 0

    .line 1350
    iput-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$3;->a:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 1353
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    .line 1354
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$3;->a:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/settings/utils/al;->Z(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$3;->a:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    .line 1355
    invoke-virtual {p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->hasFingerprints(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1356
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$3;->a:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    const-string v0, "unlock_set_pattern"

    invoke-static {p1, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->a(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 1358
    :cond_0
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$3;->a:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->a(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->a(I)V

    goto :goto_0

    .line 1361
    :cond_1
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$3;->a:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isFingerprintSupport(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$3;->a:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    .line 1362
    invoke-virtual {p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isFingerprintUnlockEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1363
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$3;->a:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    const-string v0, "unlock_set_none"

    invoke-static {p1, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->b(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 1367
    :cond_2
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$3;->a:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->c(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/coloros/settings/feature/password/a;

    move-result-object p1

    const/16 v0, 0x69

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$3;->a:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    const v2, 0x7f120c9a

    .line 1368
    invoke-virtual {v1, v2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$3;->a:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->b(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;)I

    move-result v2

    .line 1367
    invoke-virtual {p1, v0, v1, p2, v2}, Lcom/coloros/settings/feature/password/a;->a(ILjava/lang/CharSequence;ZI)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1369
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$3;->a:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->a(I)V

    .line 1374
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$3;->a:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->d(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;)V

    return p2
.end method
