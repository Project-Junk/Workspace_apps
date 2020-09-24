.class public final enum Lcom/oppo/os/a/a/a/a/a/a$ah;
.super Ljava/lang/Enum;
.source "Adstrategy.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/os/a/a/a/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ah"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oppo/os/a/a/a/a/a/a$ah;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/oppo/os/a/a/a/a/a/a$ah;

.field private static b:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/oppo/os/a/a/a/a/a/a$ah;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:[Lcom/oppo/os/a/a/a/a/a/a$ah;

.field private static final synthetic f:[Lcom/oppo/os/a/a/a/a/a/a$ah;


# instance fields
.field private final d:I

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 101
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$ah;

    const-string v1, "DEEP_LINK"

    invoke-direct {v0, v1}, Lcom/oppo/os/a/a/a/a/a/a$ah;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oppo/os/a/a/a/a/a/a$ah;->a:Lcom/oppo/os/a/a/a/a/a/a$ah;

    const/4 v0, 0x1

    .line 98
    new-array v0, v0, [Lcom/oppo/os/a/a/a/a/a/a$ah;

    sget-object v1, Lcom/oppo/os/a/a/a/a/a/a$ah;->a:Lcom/oppo/os/a/a/a/a/a/a$ah;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/oppo/os/a/a/a/a/a/a$ah;->f:[Lcom/oppo/os/a/a/a/a/a/a$ah;

    .line 122
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$ah$1;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$ah$1;-><init>()V

    sput-object v0, Lcom/oppo/os/a/a/a/a/a/a$ah;->b:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 142
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$ah;->values()[Lcom/oppo/os/a/a/a/a/a/a$ah;

    move-result-object v0

    sput-object v0, Lcom/oppo/os/a/a/a/a/a/a$ah;->c:[Lcom/oppo/os/a/a/a/a/a/a$ah;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 156
    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 157
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$ah;->d:I

    const/4 p1, 0x1

    .line 158
    iput p1, p0, Lcom/oppo/os/a/a/a/a/a/a$ah;->e:I

    return-void
.end method

.method private static a()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 139
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumDescriptor;

    return-object v0
.end method

.method public static a(I)Lcom/oppo/os/a/a/a/a/a/a$ah;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 112
    :cond_0
    sget-object p0, Lcom/oppo/os/a/a/a/a/a/a$ah;->a:Lcom/oppo/os/a/a/a/a/a/a$ah;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oppo/os/a/a/a/a/a/a$ah;
    .locals 1

    .line 98
    const-class v0, Lcom/oppo/os/a/a/a/a/a/a$ah;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oppo/os/a/a/a/a/a/a$ah;

    return-object p0
.end method

.method public static values()[Lcom/oppo/os/a/a/a/a/a/a$ah;
    .locals 1

    .line 98
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$ah;->f:[Lcom/oppo/os/a/a/a/a/a/a$ah;

    invoke-virtual {v0}, [Lcom/oppo/os/a/a/a/a/a/a$ah;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oppo/os/a/a/a/a/a/a$ah;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 135
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$ah;->a()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$ah;->e:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .line 131
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$ah;->a()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/oppo/os/a/a/a/a/a/a$ah;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
