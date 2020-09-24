.class public final Lcom/android/settings/applications/i;
.super Lcom/android/settings/applications/e;
.source "AppStatePowerBridge.java"


# static fields
.field public static final f:Lcom/coloros/settingslib/applications/ApplicationsState$b;


# instance fields
.field private final g:Lcom/android/settingslib/j/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 56
    new-instance v0, Lcom/coloros/settingslib/applications/ApplicationsState$e;

    sget-object v1, Lcom/coloros/settingslib/applications/ApplicationsState;->L:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    new-instance v2, Lcom/android/settings/applications/i$1;

    invoke-direct {v2}, Lcom/android/settings/applications/i$1;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/coloros/settingslib/applications/ApplicationsState$e;-><init>(Lcom/coloros/settingslib/applications/ApplicationsState$b;Lcom/coloros/settingslib/applications/ApplicationsState$b;)V

    sput-object v0, Lcom/android/settings/applications/i;->f:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/coloros/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/e$b;)V
    .locals 0

    .line 36
    invoke-direct {p0, p2, p3}, Lcom/android/settings/applications/e;-><init>(Lcom/coloros/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/e$b;)V

    .line 37
    invoke-static {p1}, Lcom/android/settingslib/j/c;->a(Landroid/content/Context;)Lcom/android/settingslib/j/c;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/i;->g:Lcom/android/settingslib/j/c;

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 6

    .line 42
    iget-object v0, p0, Lcom/android/settings/applications/i;->b:Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 45
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/settingslib/applications/ApplicationsState$a;

    .line 46
    iget-object v4, p0, Lcom/android/settings/applications/i;->g:Lcom/android/settingslib/j/c;

    iget-object v5, v3, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/settingslib/j/c;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_0
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    iput-object v4, v3, Lcom/coloros/settingslib/applications/ApplicationsState$a;->r:Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final a(Lcom/coloros/settingslib/applications/ApplicationsState$a;Ljava/lang/String;I)V
    .locals 0

    .line 53
    iget-object p3, p0, Lcom/android/settings/applications/i;->g:Lcom/android/settingslib/j/c;

    invoke-virtual {p3, p2}, Lcom/android/settingslib/j/c;->b(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    iput-object p2, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->r:Ljava/lang/Object;

    return-void
.end method
