.class public final enum Lcom/oppo/os/a/a/a/a/a/a$z$b;
.super Ljava/lang/Enum;
.source "Adstrategy.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/os/a/a/a/a/a/a$z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oppo/os/a/a/a/a/a/a$z$b;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/oppo/os/a/a/a/a/a/a$z$b;

.field public static final enum b:Lcom/oppo/os/a/a/a/a/a/a$z$b;

.field public static final enum c:Lcom/oppo/os/a/a/a/a/a/a$z$b;

.field private static d:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/oppo/os/a/a/a/a/a/a$z$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:[Lcom/oppo/os/a/a/a/a/a/a$z$b;

.field private static final synthetic h:[Lcom/oppo/os/a/a/a/a/a/a$z$b;


# instance fields
.field private final f:I

.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 11456
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$z$b;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1, v1, v1}, Lcom/oppo/os/a/a/a/a/a/a$z$b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oppo/os/a/a/a/a/a/a$z$b;->a:Lcom/oppo/os/a/a/a/a/a/a$z$b;

    .line 11458
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$z$b;

    const/4 v2, 0x1

    const-string v3, "OK"

    invoke-direct {v0, v3, v2, v2, v2}, Lcom/oppo/os/a/a/a/a/a/a$z$b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oppo/os/a/a/a/a/a/a$z$b;->b:Lcom/oppo/os/a/a/a/a/a/a$z$b;

    .line 11460
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$z$b;

    const/4 v3, 0x2

    const-string v4, "PAUSED"

    invoke-direct {v0, v4, v3, v3, v3}, Lcom/oppo/os/a/a/a/a/a/a$z$b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oppo/os/a/a/a/a/a/a$z$b;->c:Lcom/oppo/os/a/a/a/a/a/a$z$b;

    const/4 v0, 0x3

    .line 11453
    new-array v0, v0, [Lcom/oppo/os/a/a/a/a/a/a$z$b;

    sget-object v4, Lcom/oppo/os/a/a/a/a/a/a$z$b;->a:Lcom/oppo/os/a/a/a/a/a/a$z$b;

    aput-object v4, v0, v1

    sget-object v1, Lcom/oppo/os/a/a/a/a/a/a$z$b;->b:Lcom/oppo/os/a/a/a/a/a/a$z$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oppo/os/a/a/a/a/a/a$z$b;->c:Lcom/oppo/os/a/a/a/a/a/a$z$b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oppo/os/a/a/a/a/a/a$z$b;->h:[Lcom/oppo/os/a/a/a/a/a/a$z$b;

    .line 11487
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$z$b$1;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$z$b$1;-><init>()V

    sput-object v0, Lcom/oppo/os/a/a/a/a/a/a$z$b;->d:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 11507
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$z$b;->values()[Lcom/oppo/os/a/a/a/a/a/a$z$b;

    move-result-object v0

    sput-object v0, Lcom/oppo/os/a/a/a/a/a/a$z$b;->e:[Lcom/oppo/os/a/a/a/a/a/a$z$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 11521
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11522
    iput p3, p0, Lcom/oppo/os/a/a/a/a/a/a$z$b;->f:I

    .line 11523
    iput p4, p0, Lcom/oppo/os/a/a/a/a/a/a$z$b;->g:I

    return-void
.end method

.method private static a()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 11504
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$z;->b()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumDescriptor;

    return-object v0
.end method

.method public static a(I)Lcom/oppo/os/a/a/a/a/a/a$z$b;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 11477
    :cond_0
    sget-object p0, Lcom/oppo/os/a/a/a/a/a/a$z$b;->c:Lcom/oppo/os/a/a/a/a/a/a$z$b;

    return-object p0

    .line 11476
    :cond_1
    sget-object p0, Lcom/oppo/os/a/a/a/a/a/a$z$b;->b:Lcom/oppo/os/a/a/a/a/a/a$z$b;

    return-object p0

    .line 11475
    :cond_2
    sget-object p0, Lcom/oppo/os/a/a/a/a/a/a$z$b;->a:Lcom/oppo/os/a/a/a/a/a/a$z$b;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oppo/os/a/a/a/a/a/a$z$b;
    .locals 1

    .line 11453
    const-class v0, Lcom/oppo/os/a/a/a/a/a/a$z$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oppo/os/a/a/a/a/a/a$z$b;

    return-object p0
.end method

.method public static values()[Lcom/oppo/os/a/a/a/a/a/a$z$b;
    .locals 1

    .line 11453
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$z$b;->h:[Lcom/oppo/os/a/a/a/a/a/a$z$b;

    invoke-virtual {v0}, [Lcom/oppo/os/a/a/a/a/a/a$z$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oppo/os/a/a/a/a/a/a$z$b;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 11500
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$z$b;->a()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .line 11471
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z$b;->g:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .line 11496
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$z$b;->a()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/oppo/os/a/a/a/a/a/a$z$b;->f:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
