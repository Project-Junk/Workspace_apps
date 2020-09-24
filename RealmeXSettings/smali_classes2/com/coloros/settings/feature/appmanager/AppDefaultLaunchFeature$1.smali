.class final Lcom/coloros/settings/feature/appmanager/AppDefaultLaunchFeature$1;
.super Ljava/lang/Object;
.source "AppDefaultLaunchFeature.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/appmanager/AppDefaultLaunchFeature;->buildStateDropDown(Lcom/android/settings/applications/AppLaunchSettings;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/applications/AppLaunchSettings;

.field final synthetic b:Lcom/coloros/settings/feature/appmanager/AppDefaultLaunchFeature;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/appmanager/AppDefaultLaunchFeature;Lcom/android/settings/applications/AppLaunchSettings;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppDefaultLaunchFeature$1;->b:Lcom/coloros/settings/feature/appmanager/AppDefaultLaunchFeature;

    iput-object p2, p0, Lcom/coloros/settings/feature/appmanager/AppDefaultLaunchFeature$1;->a:Lcom/android/settings/applications/AppLaunchSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 112
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 113
    iget-object p2, p0, Lcom/coloros/settings/feature/appmanager/AppDefaultLaunchFeature$1;->a:Lcom/android/settings/applications/AppLaunchSettings;

    invoke-virtual {p2, p1}, Lcom/android/settings/applications/AppLaunchSettings;->c(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 114
    iget-object p2, p0, Lcom/coloros/settings/feature/appmanager/AppDefaultLaunchFeature$1;->b:Lcom/coloros/settings/feature/appmanager/AppDefaultLaunchFeature;

    invoke-static {p2, p1}, Lcom/coloros/settings/feature/appmanager/AppDefaultLaunchFeature;->access$000(Lcom/coloros/settings/feature/appmanager/AppDefaultLaunchFeature;I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
