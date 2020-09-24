.class final Lcom/android/settings/applications/AppLaunchSettings$1;
.super Ljava/lang/Object;
.source "AppLaunchSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppLaunchSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/applications/AppLaunchSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/AppLaunchSettings;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/android/settings/applications/AppLaunchSettings$1;->a:Lcom/android/settings/applications/AppLaunchSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 164
    iget-object p1, p0, Lcom/android/settings/applications/AppLaunchSettings$1;->a:Lcom/android/settings/applications/AppLaunchSettings;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/settings/applications/AppLaunchSettings;->c(I)Z

    move-result p1

    return p1
.end method
