.class final Lcom/android/settings/notification/r$2;
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

    .line 112
    iput-object p1, p0, Lcom/android/settings/notification/r$2;->b:Lcom/android/settings/notification/r;

    iput-object p2, p0, Lcom/android/settings/notification/r$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 115
    iget-object p1, p0, Lcom/android/settings/notification/r$2;->b:Lcom/android/settings/notification/r;

    iget-object v0, p0, Lcom/android/settings/notification/r$2;->a:Landroid/content/Context;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/android/settings/notification/r;->a(Landroid/content/Context;I)Z

    move-result p1

    return p1
.end method
