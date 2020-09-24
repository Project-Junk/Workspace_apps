.class public abstract Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;
.super Landroid/os/Binder;
.source "ISystemUiProxy.java"

# interfaces
.implements Lcom/android/systemui/shared/recents/ISystemUiProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/recents/ISystemUiProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.systemui.shared.recents.ISystemUiProxy"

.field static final TRANSACTION_getNonMinimizedSplitScreenSecondaryBounds:I = 0x8

.field static final TRANSACTION_monitorGestureInput:I = 0xf

.field static final TRANSACTION_notifyAccessibilityButtonClicked:I = 0x10

.field static final TRANSACTION_notifyAccessibilityButtonLongClicked:I = 0x11

.field static final TRANSACTION_notifyInjectAllEvent:I = 0x16

.field static final TRANSACTION_notifyInjectEvent:I = 0x17

.field static final TRANSACTION_notifyKeyEvent:I = 0x18

.field static final TRANSACTION_onAssistantGestureCompletion:I = 0x13

.field static final TRANSACTION_onAssistantProgress:I = 0xd

.field static final TRANSACTION_onGetAppIcon:I = 0x15

.field static final TRANSACTION_onOverviewShown:I = 0x7

.field static final TRANSACTION_onSplitScreenInvoked:I = 0x6

.field static final TRANSACTION_onStatusBarMotionEvent:I = 0xa

.field static final TRANSACTION_setBackButtonAlpha:I = 0x9

.field static final TRANSACTION_setNavBarButtonAlpha:I = 0x14

.field static final TRANSACTION_startAssistant:I = 0xe

.field static final TRANSACTION_startScreenPinning:I = 0x2

.field static final TRANSACTION_stopScreenPinning:I = 0x12


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 148
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.systemui.shared.recents.ISystemUiProxy"

    .line 149
    invoke-virtual {p0, p0, v0}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/systemui/shared/recents/ISystemUiProxy;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.android.systemui.shared.recents.ISystemUiProxy"

    .line 160
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 161
    instance-of v1, v0, Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz v1, :cond_1

    .line 162
    check-cast v0, Lcom/android/systemui/shared/recents/ISystemUiProxy;

    return-object v0

    .line 164
    :cond_1
    new-instance v0, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/android/systemui/shared/recents/ISystemUiProxy;
    .locals 1

    .line 912
    sget-object v0, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub$Proxy;->sDefaultImpl:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/android/systemui/shared/recents/ISystemUiProxy;)Z
    .locals 1

    .line 905
    sget-object v0, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub$Proxy;->sDefaultImpl:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 906
    sput-object p0, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub$Proxy;->sDefaultImpl:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    const-string v2, "com.android.systemui.shared.recents.ISystemUiProxy"

    if-eq p1, v0, :cond_d

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_c

    const/4 v0, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 397
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 388
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 391
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->notifyKeyEvent(I)V

    .line 392
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 367
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 370
    sget-object p1, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MotionEvent;

    goto :goto_0

    :cond_0
    move-object p1, v3

    .line 376
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1

    .line 377
    sget-object p4, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/view/MotionEvent;

    .line 382
    :cond_1
    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->notifyInjectEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 383
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 344
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 347
    sget-object p1, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MotionEvent;

    goto :goto_1

    :cond_2
    move-object p1, v3

    .line 353
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_3

    .line 354
    sget-object p4, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    move-object v3, p4

    check-cast v3, Landroid/view/MotionEvent;

    .line 360
    :cond_3
    sget-object p4, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    .line 361
    invoke-virtual {p0, p1, v3, p2}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->notifyInjectAllEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Ljava/util/List;)V

    .line 362
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 330
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    .line 333
    sget-object p1, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/graphics/Bitmap;

    .line 338
    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->onGetAppIcon(Landroid/graphics/Bitmap;)V

    .line 339
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 232
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_5

    move v0, v1

    .line 237
    :cond_5
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->setNavBarButtonAlpha(FZ)V

    .line 238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 266
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 269
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->onAssistantGestureCompletion(F)V

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 323
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->stopScreenPinning()V

    .line 325
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 316
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->notifyAccessibilityButtonLongClicked()V

    .line 318
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 307
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 310
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->notifyAccessibilityButtonClicked(I)V

    .line 311
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 289
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 294
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->monitorGestureInput(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0

    .line 295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_6

    .line 297
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    invoke-virtual {p0, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 301
    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v1

    .line 275
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7

    .line 278
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/os/Bundle;

    .line 283
    :cond_7
    invoke-virtual {p0, v3}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->startAssistant(Landroid/os/Bundle;)V

    .line 284
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 257
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 260
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->onAssistantProgress(F)V

    .line 261
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 243
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8

    .line 246
    sget-object p1, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/view/MotionEvent;

    .line 251
    :cond_8
    invoke-virtual {p0, v3}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->onStatusBarMotionEvent(Landroid/view/MotionEvent;)V

    .line 252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 221
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_9

    move v0, v1

    .line 226
    :cond_9
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->setBackButtonAlpha(FZ)V

    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 207
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->getNonMinimizedSplitScreenSecondaryBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_a

    .line 211
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    invoke-virtual {p0, p3, v1}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 215
    :cond_a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v1

    .line 198
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_b

    move v0, v1

    .line 201
    :cond_b
    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->onOverviewShown(Z)V

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 191
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->onSplitScreenInvoked()V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 177
    :cond_c
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 182
    :cond_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 185
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->startScreenPinning(I)V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
