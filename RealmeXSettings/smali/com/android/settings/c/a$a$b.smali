.class public final enum Lcom/android/settings/c/a$a$b;
.super Ljava/lang/Enum;
.source "ContextualCardProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/c/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/c/a$a$b;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/android/settings/c/a$a$b;

.field public static final enum b:Lcom/android/settings/c/a$a$b;

.field public static final enum c:Lcom/android/settings/c/a$a$b;

.field public static final enum d:Lcom/android/settings/c/a$a$b;

.field public static final enum e:Lcom/android/settings/c/a$a$b;

.field private static final f:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/android/settings/c/a$a$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic h:[Lcom/android/settings/c/a$a$b;


# instance fields
.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 565
    new-instance v0, Lcom/android/settings/c/a$a$b;

    const/4 v1, 0x0

    const-string v2, "DEFAULT"

    invoke-direct {v0, v2, v1, v1}, Lcom/android/settings/c/a$a$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/c/a$a$b;->a:Lcom/android/settings/c/a$a$b;

    .line 569
    new-instance v0, Lcom/android/settings/c/a$a$b;

    const/4 v2, 0x1

    const-string v3, "SUGGESTION"

    invoke-direct {v0, v3, v2, v2}, Lcom/android/settings/c/a$a$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/c/a$a$b;->b:Lcom/android/settings/c/a$a$b;

    .line 573
    new-instance v0, Lcom/android/settings/c/a$a$b;

    const/4 v3, 0x2

    const-string v4, "POSSIBLE"

    invoke-direct {v0, v4, v3, v3}, Lcom/android/settings/c/a$a$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/c/a$a$b;->c:Lcom/android/settings/c/a$a$b;

    .line 577
    new-instance v0, Lcom/android/settings/c/a$a$b;

    const/4 v4, 0x3

    const-string v5, "IMPORTANT"

    invoke-direct {v0, v5, v4, v4}, Lcom/android/settings/c/a$a$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/c/a$a$b;->d:Lcom/android/settings/c/a$a$b;

    .line 581
    new-instance v0, Lcom/android/settings/c/a$a$b;

    const/4 v5, 0x5

    const/4 v6, 0x4

    const-string v7, "DEFERRED_SETUP"

    invoke-direct {v0, v7, v6, v5}, Lcom/android/settings/c/a$a$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/c/a$a$b;->e:Lcom/android/settings/c/a$a$b;

    .line 560
    new-array v0, v5, [Lcom/android/settings/c/a$a$b;

    sget-object v5, Lcom/android/settings/c/a$a$b;->a:Lcom/android/settings/c/a$a$b;

    aput-object v5, v0, v1

    sget-object v1, Lcom/android/settings/c/a$a$b;->b:Lcom/android/settings/c/a$a$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/c/a$a$b;->c:Lcom/android/settings/c/a$a$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/c/a$a$b;->d:Lcom/android/settings/c/a$a$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/c/a$a$b;->e:Lcom/android/settings/c/a$a$b;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/settings/c/a$a$b;->h:[Lcom/android/settings/c/a$a$b;

    .line 634
    new-instance v0, Lcom/android/settings/c/a$a$b$1;

    invoke-direct {v0}, Lcom/android/settings/c/a$a$b$1;-><init>()V

    sput-object v0, Lcom/android/settings/c/a$a$b;->f:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 643
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 644
    iput p3, p0, Lcom/android/settings/c/a$a$b;->g:I

    return-void
.end method

.method public static a(I)Lcom/android/settings/c/a$a$b;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 624
    :cond_0
    sget-object p0, Lcom/android/settings/c/a$a$b;->e:Lcom/android/settings/c/a$a$b;

    return-object p0

    .line 623
    :cond_1
    sget-object p0, Lcom/android/settings/c/a$a$b;->d:Lcom/android/settings/c/a$a$b;

    return-object p0

    .line 622
    :cond_2
    sget-object p0, Lcom/android/settings/c/a$a$b;->c:Lcom/android/settings/c/a$a$b;

    return-object p0

    .line 621
    :cond_3
    sget-object p0, Lcom/android/settings/c/a$a$b;->b:Lcom/android/settings/c/a$a$b;

    return-object p0

    .line 620
    :cond_4
    sget-object p0, Lcom/android/settings/c/a$a$b;->a:Lcom/android/settings/c/a$a$b;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/c/a$a$b;
    .locals 1

    .line 560
    const-class v0, Lcom/android/settings/c/a$a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/c/a$a$b;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/c/a$a$b;
    .locals 1

    .line 560
    sget-object v0, Lcom/android/settings/c/a$a$b;->h:[Lcom/android/settings/c/a$a$b;

    invoke-virtual {v0}, [Lcom/android/settings/c/a$a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/c/a$a$b;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 607
    iget v0, p0, Lcom/android/settings/c/a$a$b;->g:I

    return v0
.end method
