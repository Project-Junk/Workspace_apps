.class public final Lcom/android/settings/applications/l;
.super Lcom/android/settings/applications/d;
.source "AppStateWriteSettingsBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/l$a;
    }
.end annotation


# static fields
.field public static final f:Lcom/coloros/settingslib/applications/ApplicationsState$b;

.field private static final g:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "android.permission.WRITE_SETTINGS"

    .line 37
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/l;->g:[Ljava/lang/String;

    .line 76
    new-instance v0, Lcom/android/settings/applications/l$1;

    invoke-direct {v0}, Lcom/android/settings/applications/l$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/l;->f:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/coloros/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/e$b;)V
    .locals 6

    .line 43
    sget-object v5, Lcom/android/settings/applications/l;->g:[Ljava/lang/String;

    const/16 v4, 0x17

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/d;-><init>(Landroid/content/Context;Lcom/coloros/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/e$b;I[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/coloros/settingslib/applications/ApplicationsState$a;Ljava/lang/String;I)V
    .locals 0

    .line 48
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/applications/l;->c(Ljava/lang/String;I)Lcom/android/settings/applications/l$a;

    move-result-object p2

    iput-object p2, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->r:Ljava/lang/Object;

    return-void
.end method

.method public final c(Ljava/lang/String;I)Lcom/android/settings/applications/l$a;
    .locals 0

    .line 52
    invoke-super {p0, p1, p2}, Lcom/android/settings/applications/d;->a(Ljava/lang/String;I)Lcom/android/settings/applications/d$a;

    move-result-object p1

    .line 53
    new-instance p2, Lcom/android/settings/applications/l$a;

    invoke-direct {p2, p1}, Lcom/android/settings/applications/l$a;-><init>(Lcom/android/settings/applications/d$a;)V

    return-object p2
.end method
