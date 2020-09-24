.class final Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$4;
.super Ljava/lang/Object;
.source "ChooseLockGeneric.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


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

    .line 1378
    iput-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$4;->a:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 1382
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$4;->a:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->c(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/coloros/settings/feature/password/a;

    move-result-object p1

    const-string v0, "change"

    .line 2194
    iput-object v0, p1, Lcom/coloros/settings/feature/password/a;->d:Ljava/lang/String;

    .line 1383
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$4;->a:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->c(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/coloros/settings/feature/password/a;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$4;->a:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    const v1, 0x7f120c9a

    .line 1384
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$4;->a:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->b(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;)I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x67

    .line 1383
    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/coloros/settings/feature/password/a;->a(ILjava/lang/CharSequence;ZI)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1385
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$4;->a:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->a(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->a(I)V

    :cond_0
    return v2
.end method
