.class public final enum Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;
.super Ljava/lang/Enum;
.source "TouchAnalyticsProto.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;

.field public static final enum RANDOM_WAKEUP:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;

.field public static final RANDOM_WAKEUP_VALUE:I = 0x2

.field public static final enum REAL:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;

.field public static final REAL_VALUE:I = 0x3

.field public static final enum REJECTED_TOUCH_REPORT:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;

.field public static final REJECTED_TOUCH_REPORT_VALUE:I = 0x4

.field public static final enum RESERVED_1:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;

.field public static final RESERVED_1_VALUE:I = 0x0

.field public static final enum RESERVED_2:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;

.field public static final RESERVED_2_VALUE:I = 0x1

.field private static final VALUES:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1308
    new-instance v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;

    const/4 v1, 0x0

    const-string v2, "RESERVED_1"

    invoke-direct {v0, v2, v1, v1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;->RESERVED_1:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;

    .line 1312
    new-instance v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;

    const/4 v2, 0x1

    const-string v3, "RESERVED_2"

    invoke-direct {v0, v3, v2, v2}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;->RESERVED_2:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;

    .line 1316
    new-instance v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;

    const/4 v3, 0x2

    const-string v4, "RANDOM_WAKEUP"

    invoke-direct {v0, v4, v3, v3}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;->RANDOM_WAKEUP:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;

    .line 1320
    new-instance v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;

    const/4 v4, 0x3

    const-string v5, "REAL"

    invoke-direct {v0, v5, v4, v4}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;->REAL:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;

    .line 1324
    new-instance v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;

    const/4 v5, 0x4

    const-string v6, "REJECTED_TOUCH_REPORT"

    invoke-direct {v0, v6, v5, v5}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;->REJECTED_TOUCH_REPORT:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;

    const/4 v0, 0x5

    .line 1303
    new-array v0, v0, [Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;

    sget-object v6, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;->RESERVED_1:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;

    aput-object v6, v0, v1

    sget-object v1, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;->RESERVED_2:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;->RANDOM_WAKEUP:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;->REAL:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;->REJECTED_TOUCH_REPORT:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;->$VALUES:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;

    .line 1348
    new-instance v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type$1;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 1354
    invoke-static {}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;->values()[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;->VALUES:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1357
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1358
    iput p3, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1380
    :cond_0
    sget-object p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;->REJECTED_TOUCH_REPORT:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;

    return-object p0

    .line 1378
    :cond_1
    sget-object p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;->REAL:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;

    return-object p0

    .line 1376
    :cond_2
    sget-object p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;->RANDOM_WAKEUP:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;

    return-object p0

    .line 1374
    :cond_3
    sget-object p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;->RESERVED_2:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;

    return-object p0

    .line 1372
    :cond_4
    sget-object p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;->RESERVED_1:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;

    return-object p0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 1393
    invoke-static {}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

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
            "Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;",
            ">;"
        }
    .end annotation

    .line 1388
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1366
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;->forNumber(I)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;
    .locals 2

    .line 1398
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1402
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;->VALUES:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 1399
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;
    .locals 1

    .line 1303
    const-class v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;
    .locals 1

    .line 1303
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;->$VALUES:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;

    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 0

    .line 1416
    invoke-static {}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public final getNumber()I
    .locals 0

    .line 1406
    iget p0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;->value:I

    return p0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 1

    .line 1411
    invoke-static {}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;->ordinal()I

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object p0
.end method
