.class public final enum Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;
.super Ljava/lang/Enum;
.source "TouchAnalyticsProto.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;

.field public static final enum ACCELEROMETER:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;

.field public static final ACCELEROMETER_VALUE:I = 0x1

.field public static final enum GYROSCOPE:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;

.field public static final GYROSCOPE_VALUE:I = 0x4

.field public static final enum LIGHT:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;

.field public static final LIGHT_VALUE:I = 0x5

.field public static final enum PROXIMITY:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;

.field public static final PROXIMITY_VALUE:I = 0x8

.field public static final enum ROTATION_VECTOR:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;

.field public static final ROTATION_VECTOR_VALUE:I = 0xb

.field private static final VALUES:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 5425
    new-instance v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "ACCELEROMETER"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;->ACCELEROMETER:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;

    .line 5429
    new-instance v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;

    const/4 v3, 0x4

    const-string v4, "GYROSCOPE"

    invoke-direct {v0, v4, v2, v3}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;->GYROSCOPE:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;

    .line 5433
    new-instance v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;

    const/4 v4, 0x5

    const/4 v5, 0x2

    const-string v6, "LIGHT"

    invoke-direct {v0, v6, v5, v4}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;->LIGHT:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;

    .line 5437
    new-instance v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;

    const/4 v6, 0x3

    const-string v7, "PROXIMITY"

    const/16 v8, 0x8

    invoke-direct {v0, v7, v6, v8}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;->PROXIMITY:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;

    .line 5441
    new-instance v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;

    const-string v7, "ROTATION_VECTOR"

    const/16 v8, 0xb

    invoke-direct {v0, v7, v3, v8}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;->ROTATION_VECTOR:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;

    .line 5420
    new-array v0, v4, [Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;

    sget-object v4, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;->ACCELEROMETER:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;

    aput-object v4, v0, v1

    sget-object v1, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;->GYROSCOPE:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;->LIGHT:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;->PROXIMITY:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;->ROTATION_VECTOR:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;->$VALUES:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;

    .line 5465
    new-instance v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type$1;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 5471
    invoke-static {}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;->values()[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;->VALUES:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 5474
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5475
    iput p3, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/16 v0, 0x8

    if-eq p0, v0, :cond_3

    const/16 v0, 0xb

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5493
    :cond_0
    sget-object p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;->LIGHT:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;

    return-object p0

    .line 5491
    :cond_1
    sget-object p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;->GYROSCOPE:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;

    return-object p0

    .line 5497
    :cond_2
    sget-object p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;->ROTATION_VECTOR:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;

    return-object p0

    .line 5495
    :cond_3
    sget-object p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;->PROXIMITY:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;

    return-object p0

    .line 5489
    :cond_4
    sget-object p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;->ACCELEROMETER:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;

    return-object p0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 5510
    invoke-static {}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumDescriptor;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;",
            ">;"
        }
    .end annotation

    .line 5505
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5483
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;->forNumber(I)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;
    .locals 2

    .line 5515
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 5519
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;->VALUES:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 5516
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;
    .locals 1

    .line 5420
    const-class v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;
    .locals 1

    .line 5420
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;->$VALUES:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;

    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 0

    .line 5533
    invoke-static {}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public final getNumber()I
    .locals 0

    .line 5523
    iget p0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;->value:I

    return p0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 1

    .line 5528
    invoke-static {}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;->ordinal()I

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object p0
.end method
