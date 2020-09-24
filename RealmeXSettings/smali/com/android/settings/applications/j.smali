.class public final Lcom/android/settings/applications/j;
.super Lcom/android/settings/applications/e;
.source "AppStateSmsPremBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/j$a;
    }
.end annotation


# static fields
.field public static final g:Lcom/coloros/settingslib/applications/ApplicationsState$b;


# instance fields
.field public final f:Lcom/android/internal/telephony/ISms;

.field private final h:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    new-instance v0, Lcom/android/settings/applications/j$1;

    invoke-direct {v0}, Lcom/android/settings/applications/j$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/j;->g:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/coloros/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/e$b;)V
    .locals 0

    .line 37
    invoke-direct {p0, p2, p3}, Lcom/android/settings/applications/e;-><init>(Lcom/coloros/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/e$b;)V

    .line 38
    iput-object p1, p0, Lcom/android/settings/applications/j;->h:Landroid/content/Context;

    const-string p1, "isms"

    .line 39
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/j;->f:Lcom/android/internal/telephony/ISms;

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/android/settings/applications/j$a;
    .locals 1

    .line 58
    new-instance v0, Lcom/android/settings/applications/j$a;

    invoke-direct {v0}, Lcom/android/settings/applications/j$a;-><init>()V

    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings/applications/j;->b(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/android/settings/applications/j$a;->a:I

    return-object v0
.end method

.method private b(Ljava/lang/String;)I
    .locals 1

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/j;->f:Lcom/android/internal/telephony/ISms;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected final a()V
    .locals 6

    .line 44
    iget-object v0, p0, Lcom/android/settings/applications/j;->b:Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 47
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/settingslib/applications/ApplicationsState$a;

    .line 48
    iget-object v4, v3, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v3, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/settings/applications/j;->a(Lcom/coloros/settingslib/applications/ApplicationsState$a;Ljava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final a(Lcom/coloros/settingslib/applications/ApplicationsState$a;Ljava/lang/String;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p2}, Lcom/android/settings/applications/j;->a(Ljava/lang/String;)Lcom/android/settings/applications/j$a;

    move-result-object p2

    iput-object p2, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->r:Ljava/lang/Object;

    return-void
.end method
