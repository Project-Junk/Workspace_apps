.class public final enum Lcom/android/settings/password/f;
.super Ljava/lang/Enum;
.source "ScreenLockType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/password/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/android/settings/password/f;

.field public static final enum b:Lcom/android/settings/password/f;

.field public static final enum c:Lcom/android/settings/password/f;

.field public static final enum d:Lcom/android/settings/password/f;

.field public static final enum e:Lcom/android/settings/password/f;

.field public static final enum f:Lcom/android/settings/password/f;

.field private static final synthetic j:[Lcom/android/settings/password/f;


# instance fields
.field public final g:I

.field public final h:I

.field public final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 27
    new-instance v0, Lcom/android/settings/password/f;

    const/4 v1, 0x0

    const-string v2, "NONE"

    const-string v3, "unlock_set_off"

    invoke-direct {v0, v2, v1, v1, v3}, Lcom/android/settings/password/f;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/password/f;->a:Lcom/android/settings/password/f;

    .line 30
    new-instance v0, Lcom/android/settings/password/f;

    const/4 v2, 0x1

    const-string v3, "SWIPE"

    const-string v4, "unlock_set_none"

    invoke-direct {v0, v3, v2, v1, v4}, Lcom/android/settings/password/f;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/password/f;->b:Lcom/android/settings/password/f;

    .line 33
    new-instance v0, Lcom/android/settings/password/f;

    const/4 v3, 0x2

    const-string v4, "PATTERN"

    const/high16 v5, 0x10000

    const-string v6, "unlock_set_pattern"

    invoke-direct {v0, v4, v3, v5, v6}, Lcom/android/settings/password/f;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/password/f;->c:Lcom/android/settings/password/f;

    .line 36
    new-instance v0, Lcom/android/settings/password/f;

    const-string v8, "PIN"

    const/4 v9, 0x3

    const/high16 v10, 0x20000

    const/high16 v11, 0x30000

    const-string v12, "unlock_set_pin"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/settings/password/f;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/password/f;->d:Lcom/android/settings/password/f;

    .line 40
    new-instance v0, Lcom/android/settings/password/f;

    const-string v14, "PASSWORD"

    const/4 v15, 0x4

    const/high16 v16, 0x40000

    const/high16 v17, 0x60000

    const-string v18, "unlock_set_password"

    move-object v13, v0

    invoke-direct/range {v13 .. v18}, Lcom/android/settings/password/f;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/password/f;->e:Lcom/android/settings/password/f;

    .line 44
    new-instance v0, Lcom/android/settings/password/f;

    const/4 v4, 0x5

    const-string v5, "MANAGED"

    const/high16 v6, 0x80000

    const-string v7, "unlock_set_managed"

    invoke-direct {v0, v5, v4, v6, v7}, Lcom/android/settings/password/f;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/password/f;->f:Lcom/android/settings/password/f;

    const/4 v0, 0x6

    .line 25
    new-array v0, v0, [Lcom/android/settings/password/f;

    sget-object v5, Lcom/android/settings/password/f;->a:Lcom/android/settings/password/f;

    aput-object v5, v0, v1

    sget-object v1, Lcom/android/settings/password/f;->b:Lcom/android/settings/password/f;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/password/f;->c:Lcom/android/settings/password/f;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/password/f;->d:Lcom/android/settings/password/f;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/password/f;->e:Lcom/android/settings/password/f;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/password/f;->f:Lcom/android/settings/password/f;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/settings/password/f;->j:[Lcom/android/settings/password/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    iput p3, p0, Lcom/android/settings/password/f;->g:I

    .line 70
    iput p4, p0, Lcom/android/settings/password/f;->h:I

    .line 71
    iput-object p5, p0, Lcom/android/settings/password/f;->i:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p3

    move-object v5, p4

    .line 65
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/password/f;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/android/settings/password/f;
    .locals 5

    .line 100
    invoke-static {}, Lcom/android/settings/password/f;->values()[Lcom/android/settings/password/f;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 101
    iget-object v4, v3, Lcom/android/settings/password/f;->i:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/password/f;
    .locals 1

    .line 25
    const-class v0, Lcom/android/settings/password/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/password/f;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/password/f;
    .locals 1

    .line 25
    sget-object v0, Lcom/android/settings/password/f;->j:[Lcom/android/settings/password/f;

    invoke-virtual {v0}, [Lcom/android/settings/password/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/password/f;

    return-object v0
.end method
