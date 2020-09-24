.class final Lcom/android/settings/security/OwnerInfoPreferenceController$1;
.super Ljava/lang/Object;
.source "OwnerInfoPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/security/OwnerInfoPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/security/OwnerInfoPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/security/OwnerInfoPreferenceController;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/android/settings/security/OwnerInfoPreferenceController$1;->a:Lcom/android/settings/security/OwnerInfoPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 98
    iget-object p1, p0, Lcom/android/settings/security/OwnerInfoPreferenceController$1;->a:Lcom/android/settings/security/OwnerInfoPreferenceController;

    invoke-static {p1}, Lcom/android/settings/security/OwnerInfoPreferenceController;->a(Lcom/android/settings/security/OwnerInfoPreferenceController;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/users/OwnerInfoSettings;->a(Landroidx/fragment/app/Fragment;)V

    const/4 p1, 0x1

    return p1
.end method
