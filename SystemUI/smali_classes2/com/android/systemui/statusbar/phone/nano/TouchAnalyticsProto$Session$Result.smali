.class public final enum Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;
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
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;

.field public static final enum FAILURE:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;

.field public static final FAILURE_VALUE:I = 0x0

.field public static final enum SUCCESS:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;

.field public static final SUCCESS_VALUE:I = 0x1

.field public static final enum UNKNOWN:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;

.field public static final UNKNOWN_VALUE:I = 0x2

.field private static final VALUES:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1206
    new-instance v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;

    const/4 v1, 0x0

    const-string v2, "FAILURE"

    invoke-direct {v0, v2, v1, v1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;->FAILURE:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;

    .line 1210
    new-instance v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;

    const/4 v2, 0x1

    const-string v3, "SUCCESS"

    invoke-direct {v0, v3, v2, v2}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;->SUCCESS:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;

    .line 1214
    new-instance v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;

    const/4 v3, 0x2

    const-string v4, "UNKNOWN"

    invoke-direct {v0, v4, v3, v3}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;->UNKNOWN:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;

    const/4 v0, 0x3

    .line 1201
    new-array v0, v0, [Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;

    sget-object v4, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;->FAILURE:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;

    aput-object v4, v0, v1

    sget-object v1, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;->SUCCESS:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;->UNKNOWN:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;->$VALUES:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;

    .line 1230
    new-instance v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result$1;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 1236
    invoke-static {}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;->values()[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;->VALUES:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1239
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1240
    iput p3, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1258
    :cond_0
    sget-object p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;->UNKNOWN:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;

    return-object p0

    .line 1256
    :cond_1
    sget-object p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;->SUCCESS:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;

    return-object p0

    .line 1254
    :cond_2
    sget-object p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;->FAILURE:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;

    return-object p0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 1271
    invoke-static {}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;",
            ">;"
        }
    .end annotation

    .line 1266
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1248
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;->forNumber(I)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;
    .locals 2

    .line 1276
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1280
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;->VALUES:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 1277
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;
    .locals 1

    .line 1201
    const-class v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;
    .locals 1

    .line 1201
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;->$VALUES:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;

    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 0

    .line 1294
    invoke-static {}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public final getNumber()I
    .locals 0

    .line 1284
    iget p0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;->value:I

    return p0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 1

    .line 1289
    invoke-static {}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;->ordinal()I

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object p0
.end method
