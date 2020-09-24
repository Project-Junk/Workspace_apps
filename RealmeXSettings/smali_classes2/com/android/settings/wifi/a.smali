.class public final Lcom/android/settings/wifi/a;
.super Lcom/android/settings/applications/d;
.source "AppStateChangeWifiStateBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/a$a;
    }
.end annotation


# static fields
.field public static final f:Lcom/coloros/settingslib/applications/ApplicationsState$b;

.field private static final g:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "android.permission.CHANGE_WIFI_STATE"

    .line 42
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/a;->g:[Ljava/lang/String;

    .line 79
    new-instance v0, Lcom/android/settings/wifi/a$1;

    invoke-direct {v0}, Lcom/android/settings/wifi/a$1;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/a;->f:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/coloros/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/e$b;)V
    .locals 6

    .line 48
    sget-object v5, Lcom/android/settings/wifi/a;->g:[Ljava/lang/String;

    const/16 v4, 0x47

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/d;-><init>(Landroid/content/Context;Lcom/coloros/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/e$b;I[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 58
    iget-object v0, p0, Lcom/android/settings/wifi/a;->b:Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 59
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/settingslib/applications/ApplicationsState$a;

    .line 60
    iget-object v2, v1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/settings/wifi/a;->a(Lcom/coloros/settingslib/applications/ApplicationsState$a;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/coloros/settingslib/applications/ApplicationsState$a;Ljava/lang/String;I)V
    .locals 0

    .line 53
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/wifi/a;->c(Ljava/lang/String;I)Lcom/android/settings/wifi/a$a;

    move-result-object p2

    iput-object p2, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->r:Ljava/lang/Object;

    return-void
.end method

.method public final c(Ljava/lang/String;I)Lcom/android/settings/wifi/a$a;
    .locals 0

    .line 65
    invoke-super {p0, p1, p2}, Lcom/android/settings/applications/d;->a(Ljava/lang/String;I)Lcom/android/settings/applications/d$a;

    move-result-object p1

    .line 66
    new-instance p2, Lcom/android/settings/wifi/a$a;

    invoke-direct {p2, p1}, Lcom/android/settings/wifi/a$a;-><init>(Lcom/android/settings/applications/d$a;)V

    return-object p2
.end method
