.class public final Lcom/android/settings/users/e;
.super Ljava/lang/Object;
.source "RestrictionUtils.java"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[I

.field public static final c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "no_share_location"

    .line 32
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/users/e;->a:[Ljava/lang/String;

    const/4 v0, 0x1

    .line 39
    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x7f121263

    aput v3, v1, v2

    sput-object v1, Lcom/android/settings/users/e;->b:[I

    .line 46
    new-array v0, v0, [I

    const v1, 0x7f121262

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/users/e;->c:[I

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/os/UserHandle;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/content/RestrictionEntry;",
            ">;"
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 61
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    .line 62
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object p0

    const/4 p1, 0x0

    move v2, p1

    .line 64
    :goto_0
    sget-object v3, Lcom/android/settings/users/e;->a:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 65
    new-instance v4, Landroid/content/RestrictionEntry;

    aget-object v5, v3, v2

    aget-object v3, v3, v2

    .line 67
    invoke-virtual {p0, v3, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v6, 0x1

    xor-int/2addr v3, v6

    invoke-direct {v4, v5, v3}, Landroid/content/RestrictionEntry;-><init>(Ljava/lang/String;Z)V

    .line 68
    sget-object v3, Lcom/android/settings/users/e;->b:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/content/RestrictionEntry;->setTitle(Ljava/lang/String;)V

    .line 69
    sget-object v3, Lcom/android/settings/users/e;->c:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/content/RestrictionEntry;->setDescription(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v4, v6}, Landroid/content/RestrictionEntry;->setType(I)V

    .line 71
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static a(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/UserHandle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroid/content/RestrictionEntry;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .line 79
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    .line 80
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/RestrictionEntry;

    .line 81
    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getSelectedState()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v1, v0, p2}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    goto :goto_0

    :cond_0
    return-void
.end method