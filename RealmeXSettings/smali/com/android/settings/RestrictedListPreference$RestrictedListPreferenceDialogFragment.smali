.class public Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;
.super Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;
.source "RestrictedListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RestrictedListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RestrictedListPreferenceDialogFragment"
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 218
    invoke-direct {p0}, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;-><init>()V

    const/4 v0, -0x1

    .line 220
    iput v0, p0, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;->a:I

    return-void
.end method

.method static synthetic a(Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;)Lcom/android/settings/RestrictedListPreference;
    .locals 0

    .line 1232
    invoke-virtual {p0}, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object p0

    check-cast p0, Lcom/android/settings/RestrictedListPreference;

    return-object p0
.end method

.method static synthetic b(Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;)I
    .locals 2

    .line 1268
    iget v0, p0, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2232
    invoke-virtual {p0}, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/RestrictedListPreference;

    .line 1270
    invoke-virtual {v0}, Lcom/android/settings/RestrictedListPreference;->c()I

    move-result v0

    iput v0, p0, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;->a:I

    .line 1272
    :cond_0
    iget p0, p0, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;->a:I

    return p0
.end method

.method public static b(Ljava/lang/String;)Landroidx/preference/ListPreferenceDialogFragmentCompat;
    .locals 3

    .line 223
    new-instance v0, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;-><init>()V

    .line 225
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "key"

    .line 226
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-virtual {v0, v1}, Landroidx/preference/ListPreferenceDialogFragmentCompat;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected final a()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .line 237
    new-instance v0, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment$1;-><init>(Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;)V

    return-object v0
.end method

.method protected final a(I)V
    .locals 0

    .line 281
    invoke-super {p0, p1}, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;->a(I)V

    .line 282
    iput p1, p0, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;->a:I

    return-void
.end method
