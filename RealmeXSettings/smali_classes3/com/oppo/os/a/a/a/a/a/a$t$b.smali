.class public final enum Lcom/oppo/os/a/a/a/a/a/a$t$b;
.super Ljava/lang/Enum;
.source "Adstrategy.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/os/a/a/a/a/a/a$t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oppo/os/a/a/a/a/a/a$t$b;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/oppo/os/a/a/a/a/a/a$t$b;

.field public static final enum b:Lcom/oppo/os/a/a/a/a/a/a$t$b;

.field public static final enum c:Lcom/oppo/os/a/a/a/a/a/a$t$b;

.field public static final enum d:Lcom/oppo/os/a/a/a/a/a/a$t$b;

.field public static final enum e:Lcom/oppo/os/a/a/a/a/a/a$t$b;

.field public static final enum f:Lcom/oppo/os/a/a/a/a/a/a$t$b;

.field private static g:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/oppo/os/a/a/a/a/a/a$t$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:[Lcom/oppo/os/a/a/a/a/a/a$t$b;

.field private static final synthetic k:[Lcom/oppo/os/a/a/a/a/a/a$t$b;


# instance fields
.field private final i:I

.field private final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 8446
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$t$b;

    const/4 v1, 0x0

    const-string v2, "CONNECTION_UNKNOWN"

    invoke-direct {v0, v2, v1, v1, v1}, Lcom/oppo/os/a/a/a/a/a/a$t$b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oppo/os/a/a/a/a/a/a$t$b;->a:Lcom/oppo/os/a/a/a/a/a/a$t$b;

    .line 8448
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$t$b;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-string v4, "CELL_2G"

    invoke-direct {v0, v4, v2, v2, v3}, Lcom/oppo/os/a/a/a/a/a/a$t$b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oppo/os/a/a/a/a/a/a$t$b;->b:Lcom/oppo/os/a/a/a/a/a/a$t$b;

    .line 8450
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$t$b;

    const/4 v4, 0x3

    const-string v5, "CELL_3G"

    invoke-direct {v0, v5, v3, v3, v4}, Lcom/oppo/os/a/a/a/a/a/a$t$b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oppo/os/a/a/a/a/a/a$t$b;->c:Lcom/oppo/os/a/a/a/a/a/a$t$b;

    .line 8452
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$t$b;

    const/4 v5, 0x4

    const-string v6, "CELL_4G"

    invoke-direct {v0, v6, v4, v4, v5}, Lcom/oppo/os/a/a/a/a/a/a$t$b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oppo/os/a/a/a/a/a/a$t$b;->d:Lcom/oppo/os/a/a/a/a/a/a$t$b;

    .line 8454
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$t$b;

    const-string v6, "WIFI"

    const/16 v7, 0x64

    invoke-direct {v0, v6, v5, v5, v7}, Lcom/oppo/os/a/a/a/a/a/a$t$b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oppo/os/a/a/a/a/a/a$t$b;->e:Lcom/oppo/os/a/a/a/a/a/a$t$b;

    .line 8456
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$t$b;

    const/4 v6, 0x5

    const-string v7, "NEW_TYPE"

    const/16 v8, 0x3e7

    invoke-direct {v0, v7, v6, v6, v8}, Lcom/oppo/os/a/a/a/a/a/a$t$b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oppo/os/a/a/a/a/a/a$t$b;->f:Lcom/oppo/os/a/a/a/a/a/a$t$b;

    const/4 v0, 0x6

    .line 8443
    new-array v0, v0, [Lcom/oppo/os/a/a/a/a/a/a$t$b;

    sget-object v7, Lcom/oppo/os/a/a/a/a/a/a$t$b;->a:Lcom/oppo/os/a/a/a/a/a/a$t$b;

    aput-object v7, v0, v1

    sget-object v1, Lcom/oppo/os/a/a/a/a/a/a$t$b;->b:Lcom/oppo/os/a/a/a/a/a/a$t$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oppo/os/a/a/a/a/a/a$t$b;->c:Lcom/oppo/os/a/a/a/a/a/a$t$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oppo/os/a/a/a/a/a/a$t$b;->d:Lcom/oppo/os/a/a/a/a/a/a$t$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oppo/os/a/a/a/a/a/a$t$b;->e:Lcom/oppo/os/a/a/a/a/a/a$t$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oppo/os/a/a/a/a/a/a$t$b;->f:Lcom/oppo/os/a/a/a/a/a/a$t$b;

    aput-object v1, v0, v6

    sput-object v0, Lcom/oppo/os/a/a/a/a/a/a$t$b;->k:[Lcom/oppo/os/a/a/a/a/a/a$t$b;

    .line 8492
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$t$b$1;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$t$b$1;-><init>()V

    sput-object v0, Lcom/oppo/os/a/a/a/a/a/a$t$b;->g:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 8512
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$t$b;->values()[Lcom/oppo/os/a/a/a/a/a/a$t$b;

    move-result-object v0

    sput-object v0, Lcom/oppo/os/a/a/a/a/a/a$t$b;->h:[Lcom/oppo/os/a/a/a/a/a/a$t$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 8526
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 8527
    iput p3, p0, Lcom/oppo/os/a/a/a/a/a/a$t$b;->i:I

    .line 8528
    iput p4, p0, Lcom/oppo/os/a/a/a/a/a/a$t$b;->j:I

    return-void
.end method

.method private static a()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 8509
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$t;->b()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumDescriptor;

    return-object v0
.end method

.method public static a(I)Lcom/oppo/os/a/a/a/a/a/a$t$b;
    .locals 1

    if-eqz p0, :cond_5

    const/16 v0, 0x64

    if-eq p0, v0, :cond_4

    const/16 v0, 0x3e7

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 8480
    :cond_0
    sget-object p0, Lcom/oppo/os/a/a/a/a/a/a$t$b;->d:Lcom/oppo/os/a/a/a/a/a/a$t$b;

    return-object p0

    .line 8479
    :cond_1
    sget-object p0, Lcom/oppo/os/a/a/a/a/a/a$t$b;->c:Lcom/oppo/os/a/a/a/a/a/a$t$b;

    return-object p0

    .line 8478
    :cond_2
    sget-object p0, Lcom/oppo/os/a/a/a/a/a/a$t$b;->b:Lcom/oppo/os/a/a/a/a/a/a$t$b;

    return-object p0

    .line 8482
    :cond_3
    sget-object p0, Lcom/oppo/os/a/a/a/a/a/a$t$b;->f:Lcom/oppo/os/a/a/a/a/a/a$t$b;

    return-object p0

    .line 8481
    :cond_4
    sget-object p0, Lcom/oppo/os/a/a/a/a/a/a$t$b;->e:Lcom/oppo/os/a/a/a/a/a/a$t$b;

    return-object p0

    .line 8477
    :cond_5
    sget-object p0, Lcom/oppo/os/a/a/a/a/a/a$t$b;->a:Lcom/oppo/os/a/a/a/a/a/a$t$b;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oppo/os/a/a/a/a/a/a$t$b;
    .locals 1

    .line 8443
    const-class v0, Lcom/oppo/os/a/a/a/a/a/a$t$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oppo/os/a/a/a/a/a/a$t$b;

    return-object p0
.end method

.method public static values()[Lcom/oppo/os/a/a/a/a/a/a$t$b;
    .locals 1

    .line 8443
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$t$b;->k:[Lcom/oppo/os/a/a/a/a/a/a$t$b;

    invoke-virtual {v0}, [Lcom/oppo/os/a/a/a/a/a/a$t$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oppo/os/a/a/a/a/a/a$t$b;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 8505
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$t$b;->a()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .line 8473
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$t$b;->j:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .line 8501
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$t$b;->a()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/oppo/os/a/a/a/a/a/a$t$b;->i:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
