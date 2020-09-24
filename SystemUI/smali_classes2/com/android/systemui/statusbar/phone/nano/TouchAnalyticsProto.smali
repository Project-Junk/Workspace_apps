.class public final Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto;
.super Ljava/lang/Object;
.source "TouchAnalyticsProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;,
        Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$SessionOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_systemui_Session_PhoneEvent_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_systemui_Session_PhoneEvent_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_systemui_Session_SensorEvent_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_systemui_Session_SensorEvent_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_systemui_Session_TouchEvent_BoundingBox_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_systemui_Session_TouchEvent_BoundingBox_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_systemui_Session_TouchEvent_Pointer_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_systemui_Session_TouchEvent_Pointer_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_systemui_Session_TouchEvent_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_systemui_Session_TouchEvent_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_systemui_Session_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_systemui_Session_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const-string v0, "\n\u0015touch_analytics.proto\u0012\u0008systemui\"\u00e2\u0011\n\u0007Session\u0012\u001c\n\u0014startTimestampMillis\u0018\u0001 \u0001(\u0004\u0012\u0016\n\u000edurationMillis\u0018\u0002 \u0001(\u0004\u0012\r\n\u0005build\u0018\u0003 \u0001(\t\u0012(\n\u0006result\u0018\u0004 \u0001(\u000e2\u0018.systemui.Session.Result\u00121\n\u000btouchEvents\u0018\u0005 \u0003(\u000b2\u001c.systemui.Session.TouchEvent\u00123\n\u000csensorEvents\u0018\u0006 \u0003(\u000b2\u001d.systemui.Session.SensorEvent\u0012\u0016\n\u000etouchAreaWidth\u0018\t \u0001(\u0005\u0012\u0017\n\u000ftouchAreaHeight\u0018\n \u0001(\u0005\u0012$\n\u0004type\u0018\u000b \u0001(\u000e2\u0016.systemui.Session.Type\u00121\n\u000bphoneEvents\u0018\u000c \u0003(\u000b2\u001c.systemui.Session.PhoneEvent\u0012\u0011\n\tdevice_id\u0018\r \u0001(\t\u001a\u00c4\u0004\n\nTouchEvent\u0012\u0017\n\u000ftimeOffsetNanos\u0018\u0001 \u0001(\u0004\u00123\n\u0006action\u0018\u0002 \u0001(\u000e2#.systemui.Session.TouchEvent.Action\u0012\u0013\n\u000bactionIndex\u0018\u0003 \u0001(\u0005\u00126\n\u0008pointers\u0018\u0004 \u0003(\u000b2$.systemui.Session.TouchEvent.Pointer\u0012\u0018\n\u0010removed_redacted\u0018\u0005 \u0001(\u0008\u0012E\n\u0013removed_boundingBox\u0018\u0006 \u0001(\u000b2(.systemui.Session.TouchEvent.BoundingBox\u001a,\n\u000bBoundingBox\u0012\r\n\u0005width\u0018\u0001 \u0001(\u0002\u0012\u000e\n\u0006height\u0018\u0002 \u0001(\u0002\u001a\u00aa\u0001\n\u0007Pointer\u0012\t\n\u0001x\u0018\u0001 \u0001(\u0002\u0012\t\n\u0001y\u0018\u0002 \u0001(\u0002\u0012\u000c\n\u0004size\u0018\u0003 \u0001(\u0002\u0012\u0010\n\u0008pressure\u0018\u0004 \u0001(\u0002\u0012\n\n\u0002id\u0018\u0005 \u0001(\u0005\u0012\u0016\n\u000eremoved_length\u0018\u0006 \u0001(\u0002\u0012E\n\u0013removed_boundingBox\u0018\u0007 \u0001(\u000b2(.systemui.Session.TouchEvent.BoundingBox\"_\n\u0006Action\u0012\u0008\n\u0004DOWN\u0010\u0000\u0012\u0006\n\u0002UP\u0010\u0001\u0012\u0008\n\u0004MOVE\u0010\u0002\u0012\n\n\u0006CANCEL\u0010\u0003\u0012\u000b\n\u0007OUTSIDE\u0010\u0004\u0012\u0010\n\u000cPOINTER_DOWN\u0010\u0005\u0012\u000e\n\nPOINTER_UP\u0010\u0006\u001a\u00d5\u0001\n\u000bSensorEvent\u00120\n\u0004type\u0018\u0001 \u0001(\u000e2\".systemui.Session.SensorEvent.Type\u0012\u0017\n\u000ftimeOffsetNanos\u0018\u0002 \u0001(\u0004\u0012\u000f\n\u0007zvalues\u0018\u0003 \u0003(\u0002\u0012\u0011\n\ttimestamp\u0018\u0004 \u0001(\u0004\"W\n\u0004Type\u0012\u0011\n\rACCELEROMETER\u0010\u0001\u0012\r\n\tGYROSCOPE\u0010\u0004\u0012\t\n\u0005LIGHT\u0010\u0005\u0012\r\n\tPROXIMITY\u0010\u0008\u0012\u0013\n\u000fROTATION_VECTOR\u0010\u000b\u001a\u00b2\u0007\n\nPhoneEvent\u0012/\n\u0004type\u0018\u0001 \u0001(\u000e2!.systemui.Session.PhoneEvent.Type\u0012\u0017\n\u000ftimeOffsetNanos\u0018\u0002 \u0001(\u0004\"\u00d9\u0006\n\u0004Type\u0012\u0010\n\u000cON_SCREEN_ON\u0010\u0000\u0012\u001b\n\u0017ON_SCREEN_ON_FROM_TOUCH\u0010\u0001\u0012\u0011\n\rON_SCREEN_OFF\u0010\u0002\u0012\u0018\n\u0014ON_SUCCESSFUL_UNLOCK\u0010\u0003\u0012\u0014\n\u0010ON_BOUNCER_SHOWN\u0010\u0004\u0012\u0015\n\u0011ON_BOUNCER_HIDDEN\u0010\u0005\u0012\u000e\n\nON_QS_DOWN\u0010\u0006\u0012\u0018\n\u0014SET_QS_EXPANDED_TRUE\u0010\u0007\u0012\u0019\n\u0015SET_QS_EXPANDED_FALSE\u0010\u0008\u0012\u0017\n\u0013ON_TRACKING_STARTED\u0010\t\u0012\u0017\n\u0013ON_TRACKING_STOPPED\u0010\n\u0012\u001a\n\u0016ON_NOTIFICATION_ACTIVE\u0010\u000b\u0012\u001c\n\u0018ON_NOTIFICATION_INACTIVE\u0010\u000c\u0012\u001e\n\u001aON_NOTIFICATION_DOUBLE_TAP\u0010\r\u0012\u001d\n\u0019SET_NOTIFICATION_EXPANDED\u0010\u000e\u0012\u001f\n\u001bRESET_NOTIFICATION_EXPANDED\u0010\u000f\u0012\'\n#ON_NOTIFICATION_START_DRAGGING_DOWN\u0010\u0010\u0012&\n\"ON_NOTIFICATION_STOP_DRAGGING_DOWN\u0010\u0011\u0012\u001d\n\u0019ON_NOTIFICATION_DISMISSED\u0010\u0012\u0012$\n ON_NOTIFICATION_START_DISMISSING\u0010\u0013\u0012#\n\u001fON_NOTIFICATION_STOP_DISMISSING\u0010\u0014\u0012\'\n#ON_RIGHT_AFFORDANCE_SWIPING_STARTED\u0010\u0015\u0012&\n\"ON_LEFT_AFFORDANCE_SWIPING_STARTED\u0010\u0016\u0012!\n\u001dON_AFFORDANCE_SWIPING_ABORTED\u0010\u0017\u0012\u0010\n\u000cON_CAMERA_ON\u0010\u0018\u0012\u0019\n\u0015ON_LEFT_AFFORDANCE_ON\u0010\u0019\u0012\u001a\n\u0016ON_UNLOCK_HINT_STARTED\u0010\u001a\u0012\u001a\n\u0016ON_CAMERA_HINT_STARTED\u0010\u001b\u0012#\n\u001fON_LEFT_AFFORDANCE_HINT_STARTED\u0010\u001c\"/\n\u0006Result\u0012\u000b\n\u0007FAILURE\u0010\u0000\u0012\u000b\n\u0007SUCCESS\u0010\u0001\u0012\u000b\n\u0007UNKNOWN\u0010\u0002\"^\n\u0004Type\u0012\u000e\n\nRESERVED_1\u0010\u0000\u0012\u000e\n\nRESERVED_2\u0010\u0001\u0012\u0011\n\rRANDOM_WAKEUP\u0010\u0002\u0012\u0008\n\u0004REAL\u0010\u0003\u0012\u0019\n\u0015REJECTED_TOUCH_REPORT\u0010\u0004B@\n)com.android.systemui.statusbar.phone.nanoB\u0013TouchAnalyticsProto"

    .line 42
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 104
    new-instance v1, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$1;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$1;-><init>()V

    const/4 v2, 0x0

    .line 112
    new-array v3, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 113
    invoke-static {v0, v3, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 117
    invoke-static {}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto;->internal_static_systemui_Session_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 118
    new-instance v0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    sget-object v1, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto;->internal_static_systemui_Session_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const-string v3, "StartTimestampMillis"

    const-string v4, "DurationMillis"

    const-string v5, "Build"

    const-string v6, "Result"

    const-string v7, "TouchEvents"

    const-string v8, "SensorEvents"

    const-string v9, "TouchAreaWidth"

    const-string v10, "TouchAreaHeight"

    const-string v11, "Type"

    const-string v12, "PhoneEvents"

    const-string v13, "DeviceId"

    filled-new-array/range {v3 .. v13}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto;->internal_static_systemui_Session_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 122
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto;->internal_static_systemui_Session_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 123
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto;->internal_static_systemui_Session_TouchEvent_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 124
    new-instance v0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    sget-object v1, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto;->internal_static_systemui_Session_TouchEvent_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const-string v3, "TimeOffsetNanos"

    const-string v4, "Action"

    const-string v5, "ActionIndex"

    const-string v6, "Pointers"

    const-string v7, "RemovedRedacted"

    const-string v8, "RemovedBoundingBox"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto;->internal_static_systemui_Session_TouchEvent_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 128
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto;->internal_static_systemui_Session_TouchEvent_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 129
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto;->internal_static_systemui_Session_TouchEvent_BoundingBox_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 130
    new-instance v0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    sget-object v1, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto;->internal_static_systemui_Session_TouchEvent_BoundingBox_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const-string v2, "Width"

    const-string v3, "Height"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto;->internal_static_systemui_Session_TouchEvent_BoundingBox_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 134
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto;->internal_static_systemui_Session_TouchEvent_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 135
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto;->internal_static_systemui_Session_TouchEvent_Pointer_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 136
    new-instance v0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    sget-object v2, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto;->internal_static_systemui_Session_TouchEvent_Pointer_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const-string v3, "X"

    const-string v4, "Y"

    const-string v5, "Size"

    const-string v6, "Pressure"

    const-string v7, "Id"

    const-string v8, "RemovedLength"

    const-string v9, "RemovedBoundingBox"

    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto;->internal_static_systemui_Session_TouchEvent_Pointer_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 140
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto;->internal_static_systemui_Session_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 141
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto;->internal_static_systemui_Session_SensorEvent_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 142
    new-instance v0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    sget-object v1, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto;->internal_static_systemui_Session_SensorEvent_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const-string v2, "TimeOffsetNanos"

    const-string v3, "Type"

    const-string v4, "Zvalues"

    const-string v5, "Timestamp"

    filled-new-array {v3, v2, v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto;->internal_static_systemui_Session_SensorEvent_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 146
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto;->internal_static_systemui_Session_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 147
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto;->internal_static_systemui_Session_PhoneEvent_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 148
    new-instance v0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    sget-object v1, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto;->internal_static_systemui_Session_PhoneEvent_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto;->internal_static_systemui_Session_PhoneEvent_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    .line 7
    sput-object p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method static synthetic access$1200()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 7
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto;->internal_static_systemui_Session_TouchEvent_BoundingBox_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1300()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 7
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto;->internal_static_systemui_Session_TouchEvent_BoundingBox_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$200()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 7
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto;->internal_static_systemui_Session_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$2200()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 7
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto;->internal_static_systemui_Session_TouchEvent_Pointer_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$2300()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 7
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto;->internal_static_systemui_Session_TouchEvent_Pointer_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$300()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 7
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto;->internal_static_systemui_Session_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$3400()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 7
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto;->internal_static_systemui_Session_SensorEvent_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$3500()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 7
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto;->internal_static_systemui_Session_SensorEvent_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$4100()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 7
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto;->internal_static_systemui_Session_PhoneEvent_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$4200()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 7
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto;->internal_static_systemui_Session_PhoneEvent_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$700()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 7
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto;->internal_static_systemui_Session_TouchEvent_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$800()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 7
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto;->internal_static_systemui_Session_TouchEvent_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 168
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0

    .line 162
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto;->registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 0

    return-void
.end method
