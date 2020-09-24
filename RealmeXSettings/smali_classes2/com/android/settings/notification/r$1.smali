.class final Lcom/android/settings/notification/r$1;
.super Ljava/lang/Object;
.source "SettingPref.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/r;->a(Lcom/android/settings/SettingsPreferenceFragment;)Landroidx/preference/Preference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/android/settings/notification/r;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/r;Landroid/content/Context;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/android/settings/notification/r$1;->b:Lcom/android/settings/notification/r;

    iput-object p2, p0, Lcom/android/settings/notification/r$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 105
    iget-object p1, p0, Lcom/android/settings/notification/r$1;->b:Lcom/android/settings/notification/r;

    iget-object v0, p0, Lcom/android/settings/notification/r$1;->a:Landroid/content/Context;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/android/settings/notification/r;->a(Landroid/content/Context;I)Z

    const/4 p1, 0x1

    return p1
.end method
