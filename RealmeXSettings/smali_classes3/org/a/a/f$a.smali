.class public abstract Lorg/a/a/f$a;
.super Landroid/os/Binder;
.source "IExtTelephony.java"

# interfaces
.implements Lorg/a/a/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/a/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/a/a/f$a$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/os/IBinder;)Lorg/a/a/f;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "org.codeaurora.internal.IExtTelephony"

    .line 415
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 416
    instance-of v1, v0, Lorg/a/a/f;

    if-eqz v1, :cond_1

    .line 417
    check-cast v0, Lorg/a/a/f;

    return-object v0

    .line 419
    :cond_1
    new-instance v0, Lorg/a/a/f$a$a;

    invoke-direct {v0, p0}, Lorg/a/a/f$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static j()Lorg/a/a/f;
    .locals 1

    .line 2268
    sget-object v0, Lorg/a/a/f$a$a;->a:Lorg/a/a/f;

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "org.codeaurora.internal.IExtTelephony"

    if-eq p1, v0, :cond_1c

    const/4 v0, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 987
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 975
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 977
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 979
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 980
    invoke-virtual {p0, p1, p2}, Lorg/a/a/f$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 981
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 982
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 963
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 965
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 967
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_0

    move v3, v1

    .line 968
    :cond_0
    invoke-virtual {p0, p1, v3}, Lorg/a/a/f$a;->a(Ljava/lang/String;Z)Z

    move-result p1

    .line 969
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 970
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 951
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 953
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 955
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 956
    invoke-virtual {p0, p1, p2}, Lorg/a/a/f$a;->a(Ljava/lang/String;I)I

    move-result p1

    .line 957
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 958
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 942
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 944
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lorg/a/a/g$a;->a(Landroid/os/IBinder;)Lorg/a/a/g;

    move-result-object p1

    .line 945
    invoke-virtual {p0, p1}, Lorg/a/a/f$a;->a(Lorg/a/a/g;)V

    .line 946
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 924
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 926
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 928
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lorg/a/a/g$a;->a(Landroid/os/IBinder;)Lorg/a/a/g;

    move-result-object p2

    .line 929
    invoke-virtual {p0, p1, p2}, Lorg/a/a/f$a;->a(Ljava/lang/String;Lorg/a/a/g;)Lorg/a/a/b;

    move-result-object p1

    .line 930
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1

    .line 932
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 933
    invoke-virtual {p1, p3, v1}, Lorg/a/a/b;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 936
    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    .line 901
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 903
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 905
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_2

    .line 906
    sget-object p4, Lorg/a/a/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lorg/a/a/b;

    .line 911
    :cond_2
    invoke-virtual {p0, p1, v0}, Lorg/a/a/f$a;->j(ILorg/a/a/b;)Lorg/a/a/m;

    move-result-object p1

    .line 912
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_3

    .line 914
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 915
    invoke-virtual {p1, p3, v1}, Lorg/a/a/m;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 918
    :cond_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v1

    .line 878
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 880
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 882
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_4

    .line 883
    sget-object p4, Lorg/a/a/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lorg/a/a/b;

    .line 888
    :cond_4
    invoke-virtual {p0, p1, v0}, Lorg/a/a/f$a;->i(ILorg/a/a/b;)Lorg/a/a/m;

    move-result-object p1

    .line 889
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_5

    .line 891
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 892
    invoke-virtual {p1, p3, v1}, Lorg/a/a/m;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 895
    :cond_5
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v1

    .line 855
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 857
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 859
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_6

    .line 860
    sget-object p4, Lorg/a/a/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lorg/a/a/b;

    .line 865
    :cond_6
    invoke-virtual {p0, p1, v0}, Lorg/a/a/f$a;->h(ILorg/a/a/b;)Lorg/a/a/m;

    move-result-object p1

    .line 866
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_7

    .line 868
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 869
    invoke-virtual {p1, p3, v1}, Lorg/a/a/m;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 872
    :cond_7
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v1

    .line 832
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 834
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 836
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_8

    .line 837
    sget-object p4, Lorg/a/a/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lorg/a/a/b;

    .line 842
    :cond_8
    invoke-virtual {p0, p1, v0}, Lorg/a/a/f$a;->g(ILorg/a/a/b;)Lorg/a/a/m;

    move-result-object p1

    .line 843
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_9

    .line 845
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 846
    invoke-virtual {p1, p3, v1}, Lorg/a/a/m;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 849
    :cond_9
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    return v1

    .line 809
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 811
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 813
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_a

    .line 814
    sget-object p4, Lorg/a/a/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lorg/a/a/b;

    .line 819
    :cond_a
    invoke-virtual {p0, p1, v0}, Lorg/a/a/f$a;->f(ILorg/a/a/b;)Lorg/a/a/m;

    move-result-object p1

    .line 820
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_b

    .line 822
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 823
    invoke-virtual {p1, p3, v1}, Lorg/a/a/m;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    .line 826
    :cond_b
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    return v1

    .line 786
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 788
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 790
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_c

    .line 791
    sget-object p4, Lorg/a/a/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lorg/a/a/b;

    .line 796
    :cond_c
    invoke-virtual {p0, p1, v0}, Lorg/a/a/f$a;->e(ILorg/a/a/b;)Lorg/a/a/m;

    move-result-object p1

    .line 797
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_d

    .line 799
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 800
    invoke-virtual {p1, p3, v1}, Lorg/a/a/m;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    .line 803
    :cond_d
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_6
    return v1

    .line 763
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 765
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 767
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_e

    .line 768
    sget-object p4, Lorg/a/a/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lorg/a/a/b;

    .line 773
    :cond_e
    invoke-virtual {p0, p1, v0}, Lorg/a/a/f$a;->d(ILorg/a/a/b;)Lorg/a/a/m;

    move-result-object p1

    .line 774
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_f

    .line 776
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 777
    invoke-virtual {p1, p3, v1}, Lorg/a/a/m;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_7

    .line 780
    :cond_f
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_7
    return v1

    .line 740
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 742
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 744
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_10

    .line 745
    sget-object p4, Lorg/a/a/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lorg/a/a/b;

    .line 750
    :cond_10
    invoke-virtual {p0, p1, v0}, Lorg/a/a/f$a;->c(ILorg/a/a/b;)Lorg/a/a/m;

    move-result-object p1

    .line 751
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_11

    .line 753
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 754
    invoke-virtual {p1, p3, v1}, Lorg/a/a/m;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8

    .line 757
    :cond_11
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_8
    return v1

    .line 717
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 719
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 721
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_12

    .line 722
    sget-object p4, Lorg/a/a/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lorg/a/a/b;

    .line 727
    :cond_12
    invoke-virtual {p0, p1, v0}, Lorg/a/a/f$a;->b(ILorg/a/a/b;)Lorg/a/a/m;

    move-result-object p1

    .line 728
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_13

    .line 730
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 731
    invoke-virtual {p1, p3, v1}, Lorg/a/a/m;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 734
    :cond_13
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_9
    return v1

    .line 694
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 696
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 698
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_14

    .line 699
    sget-object p4, Lorg/a/a/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lorg/a/a/b;

    .line 704
    :cond_14
    invoke-virtual {p0, p1, v0}, Lorg/a/a/f$a;->a(ILorg/a/a/b;)Lorg/a/a/m;

    move-result-object p1

    .line 705
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_15

    .line 707
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 708
    invoke-virtual {p1, p3, v1}, Lorg/a/a/m;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_a

    .line 711
    :cond_15
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_a
    return v1

    .line 686
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 687
    invoke-virtual {p0}, Lorg/a/a/f$a;->i()I

    move-result p1

    .line 688
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 689
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 676
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 678
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 679
    invoke-virtual {p0, p1}, Lorg/a/a/f$a;->e(Ljava/lang/String;)Z

    move-result p1

    .line 680
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 681
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 666
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 668
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 669
    invoke-virtual {p0, p1}, Lorg/a/a/f$a;->h(I)Ljava/lang/String;

    move-result-object p1

    .line 670
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 654
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 656
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 658
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 659
    invoke-virtual {p0, p1, p2}, Lorg/a/a/f$a;->a(ILjava/lang/String;)Z

    move-result p1

    .line 660
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 661
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 644
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 646
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 647
    invoke-virtual {p0, p1}, Lorg/a/a/f$a;->g(I)Z

    move-result p1

    .line 648
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 649
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 636
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 637
    invoke-virtual {p0}, Lorg/a/a/f$a;->h()I

    move-result p1

    .line 638
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 639
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 621
    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 623
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 625
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 627
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_16

    goto :goto_b

    :cond_16
    const-string v0, "org.codeaurora.internal.IDepersoResCallback"

    .line 4036
    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 4037
    instance-of v3, v0, Lorg/a/a/d;

    if-eqz v3, :cond_17

    .line 4038
    check-cast v0, Lorg/a/a/d;

    goto :goto_b

    .line 4040
    :cond_17
    new-instance v0, Lorg/a/a/d$a$a;

    invoke-direct {v0, v2}, Lorg/a/a/d$a$a;-><init>(Landroid/os/IBinder;)V

    .line 629
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 630
    invoke-virtual {p0, p1, p4, v0, p2}, Lorg/a/a/f$a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/a/a/d;I)V

    .line 631
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 613
    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 614
    invoke-virtual {p0}, Lorg/a/a/f$a;->g()Z

    move-result p1

    .line 615
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 616
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 605
    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 606
    invoke-virtual {p0}, Lorg/a/a/f$a;->f()I

    move-result p1

    .line 607
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 608
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 596
    :pswitch_18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 598
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_18

    goto :goto_c

    :cond_18
    const-string p2, "org.codeaurora.internal.IDsda"

    .line 3046
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    if-eqz p2, :cond_19

    .line 3047
    instance-of p4, p2, Lorg/a/a/e;

    if-eqz p4, :cond_19

    .line 3048
    move-object v0, p2

    check-cast v0, Lorg/a/a/e;

    goto :goto_c

    .line 3050
    :cond_19
    new-instance v0, Lorg/a/a/e$a$a;

    invoke-direct {v0, p1}, Lorg/a/a/e$a$a;-><init>(Landroid/os/IBinder;)V

    .line 599
    :goto_c
    invoke-virtual {p0, v0}, Lorg/a/a/f$a;->a(Lorg/a/a/e;)V

    .line 600
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 587
    :pswitch_19
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 589
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 590
    invoke-virtual {p0, p1}, Lorg/a/a/f$a;->f(I)V

    .line 591
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 575
    :pswitch_1a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 577
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 579
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_1a

    move v3, v1

    .line 580
    :cond_1a
    invoke-virtual {p0, p1, v3}, Lorg/a/a/f$a;->a(IZ)Z

    move-result p1

    .line 581
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 582
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 567
    :pswitch_1b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 568
    invoke-virtual {p0}, Lorg/a/a/f$a;->e()Z

    move-result p1

    .line 569
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 570
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 557
    :pswitch_1c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 559
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 560
    invoke-virtual {p0, p1}, Lorg/a/a/f$a;->d(Ljava/lang/String;)Z

    move-result p1

    .line 561
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 562
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 547
    :pswitch_1d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 549
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 550
    invoke-virtual {p0, p1}, Lorg/a/a/f$a;->c(Ljava/lang/String;)Z

    move-result p1

    .line 551
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 552
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 537
    :pswitch_1e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 539
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 540
    invoke-virtual {p0, p1}, Lorg/a/a/f$a;->b(Ljava/lang/String;)Z

    move-result p1

    .line 541
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 542
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 527
    :pswitch_1f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 529
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 530
    invoke-virtual {p0, p1}, Lorg/a/a/f$a;->a(Ljava/lang/String;)Z

    move-result p1

    .line 531
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 532
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 519
    :pswitch_20
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 520
    invoke-virtual {p0}, Lorg/a/a/f$a;->d()I

    move-result p1

    .line 521
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 522
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 511
    :pswitch_21
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 512
    invoke-virtual {p0}, Lorg/a/a/f$a;->c()Z

    move-result p1

    .line 513
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 514
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 502
    :pswitch_22
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 505
    invoke-virtual {p0, p1}, Lorg/a/a/f$a;->e(I)V

    .line 506
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 494
    :pswitch_23
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 495
    invoke-virtual {p0}, Lorg/a/a/f$a;->b()I

    move-result p1

    .line 496
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 485
    :pswitch_24
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 487
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1b

    move v3, v1

    .line 488
    :cond_1b
    invoke-virtual {p0, v3}, Lorg/a/a/f$a;->a(Z)V

    .line 489
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 477
    :pswitch_25
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    invoke-virtual {p0}, Lorg/a/a/f$a;->a()Z

    move-result p1

    .line 479
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 467
    :pswitch_26
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 469
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 470
    invoke-virtual {p0, p1}, Lorg/a/a/f$a;->d(I)I

    move-result p1

    .line 471
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 457
    :pswitch_27
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 460
    invoke-virtual {p0, p1}, Lorg/a/a/f$a;->c(I)I

    move-result p1

    .line 461
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 447
    :pswitch_28
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 450
    invoke-virtual {p0, p1}, Lorg/a/a/f$a;->b(I)I

    move-result p1

    .line 451
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 437
    :pswitch_29
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 439
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 440
    invoke-virtual {p0, p1}, Lorg/a/a/f$a;->a(I)I

    move-result p1

    .line 441
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 432
    :cond_1c
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
