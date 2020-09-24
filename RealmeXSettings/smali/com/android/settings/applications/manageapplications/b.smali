.class public final Lcom/android/settings/applications/manageapplications/b;
.super Ljava/lang/Object;
.source "AppFilterRegistry.java"


# static fields
.field private static b:Lcom/android/settings/applications/manageapplications/b;


# instance fields
.field final a:[Lcom/android/settings/applications/manageapplications/a;


# direct methods
.method private constructor <init>()V
    .locals 6

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x11

    .line 85
    new-array v0, v0, [Lcom/android/settings/applications/manageapplications/a;

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/b;->a:[Lcom/android/settings/applications/manageapplications/a;

    .line 88
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/b;->a:[Lcom/android/settings/applications/manageapplications/a;

    new-instance v1, Lcom/android/settings/applications/manageapplications/a;

    new-instance v2, Lcom/coloros/settingslib/applications/ApplicationsState$e;

    sget-object v3, Lcom/android/settings/applications/i;->f:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    sget-object v4, Lcom/coloros/settingslib/applications/ApplicationsState;->S:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    invoke-direct {v2, v3, v4}, Lcom/coloros/settingslib/applications/ApplicationsState$e;-><init>(Lcom/coloros/settingslib/applications/ApplicationsState$b;Lcom/coloros/settingslib/applications/ApplicationsState$b;)V

    const/4 v3, 0x0

    const v4, 0x7f120ae2

    invoke-direct {v1, v2, v3, v4}, Lcom/android/settings/applications/manageapplications/a;-><init>(Lcom/coloros/settingslib/applications/ApplicationsState$b;II)V

    aput-object v1, v0, v3

    .line 96
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/b;->a:[Lcom/android/settings/applications/manageapplications/a;

    new-instance v1, Lcom/android/settings/applications/manageapplications/a;

    new-instance v2, Lcom/coloros/settingslib/applications/ApplicationsState$e;

    sget-object v3, Lcom/coloros/settingslib/applications/ApplicationsState;->L:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    sget-object v4, Lcom/coloros/settingslib/applications/ApplicationsState;->S:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    invoke-direct {v2, v3, v4}, Lcom/coloros/settingslib/applications/ApplicationsState$e;-><init>(Lcom/coloros/settingslib/applications/ApplicationsState$b;Lcom/coloros/settingslib/applications/ApplicationsState$b;)V

    const/4 v3, 0x1

    const v4, 0x7f12099a

    invoke-direct {v1, v2, v3, v4}, Lcom/android/settings/applications/manageapplications/a;-><init>(Lcom/coloros/settingslib/applications/ApplicationsState$b;II)V

    aput-object v1, v0, v3

    .line 105
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/b;->a:[Lcom/android/settings/applications/manageapplications/a;

    new-instance v1, Lcom/android/settings/applications/manageapplications/a;

    sget-object v2, Lcom/coloros/settings/feature/appmanager/d;->c:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/android/settings/applications/manageapplications/a;-><init>(Lcom/coloros/settingslib/applications/ApplicationsState$b;II)V

    aput-object v1, v0, v3

    .line 113
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/b;->a:[Lcom/android/settings/applications/manageapplications/a;

    new-instance v1, Lcom/android/settings/applications/manageapplications/a;

    sget-object v2, Lcom/coloros/settingslib/applications/ApplicationsState;->S:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    const/4 v3, 0x3

    const v5, 0x7f1209a1

    invoke-direct {v1, v2, v3, v5}, Lcom/android/settings/applications/manageapplications/a;-><init>(Lcom/coloros/settingslib/applications/ApplicationsState$b;II)V

    aput-object v1, v0, v3

    .line 119
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/b;->a:[Lcom/android/settings/applications/manageapplications/a;

    new-instance v1, Lcom/android/settings/applications/manageapplications/a;

    sget-object v2, Lcom/coloros/settingslib/applications/ApplicationsState;->Q:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    const/4 v3, 0x5

    const v5, 0x7f12099c

    invoke-direct {v1, v2, v3, v5}, Lcom/android/settings/applications/manageapplications/a;-><init>(Lcom/coloros/settingslib/applications/ApplicationsState$b;II)V

    aput-object v1, v0, v3

    .line 125
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/b;->a:[Lcom/android/settings/applications/manageapplications/a;

    new-instance v1, Lcom/android/settings/applications/manageapplications/a;

    sget-object v2, Lcom/coloros/settingslib/applications/ApplicationsState;->R:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    const/4 v3, 0x4

    const v5, 0x7f1209a3

    invoke-direct {v1, v2, v3, v5}, Lcom/android/settings/applications/manageapplications/a;-><init>(Lcom/coloros/settingslib/applications/ApplicationsState$b;II)V

    aput-object v1, v0, v3

    .line 131
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/b;->a:[Lcom/android/settings/applications/manageapplications/a;

    new-instance v1, Lcom/android/settings/applications/manageapplications/a;

    sget-object v2, Lcom/android/settings/applications/g;->g:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    const/4 v3, 0x6

    const v5, 0x7f12150c

    invoke-direct {v1, v2, v3, v5}, Lcom/android/settings/applications/manageapplications/a;-><init>(Lcom/coloros/settingslib/applications/ApplicationsState$b;II)V

    aput-object v1, v0, v3

    .line 137
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/b;->a:[Lcom/android/settings/applications/manageapplications/a;

    new-instance v1, Lcom/android/settings/applications/manageapplications/a;

    sget-object v2, Lcom/android/settings/applications/g;->h:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    const/4 v3, 0x7

    const v5, 0x7f12150b

    invoke-direct {v1, v2, v3, v5}, Lcom/android/settings/applications/manageapplications/a;-><init>(Lcom/coloros/settingslib/applications/ApplicationsState$b;II)V

    aput-object v1, v0, v3

    .line 143
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/b;->a:[Lcom/android/settings/applications/manageapplications/a;

    new-instance v1, Lcom/android/settings/applications/manageapplications/a;

    sget-object v2, Lcom/coloros/settingslib/applications/ApplicationsState;->K:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    const/16 v3, 0x8

    const v5, 0x7f1209ab

    invoke-direct {v1, v2, v3, v5}, Lcom/android/settings/applications/manageapplications/a;-><init>(Lcom/coloros/settingslib/applications/ApplicationsState$b;II)V

    aput-object v1, v0, v3

    .line 149
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/b;->a:[Lcom/android/settings/applications/manageapplications/a;

    new-instance v1, Lcom/android/settings/applications/manageapplications/a;

    sget-object v2, Lcom/coloros/settingslib/applications/ApplicationsState;->M:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    const/16 v3, 0x9

    const v5, 0x7f1209ac

    invoke-direct {v1, v2, v3, v5}, Lcom/android/settings/applications/manageapplications/a;-><init>(Lcom/coloros/settingslib/applications/ApplicationsState$b;II)V

    aput-object v1, v0, v3

    .line 155
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/b;->a:[Lcom/android/settings/applications/manageapplications/a;

    new-instance v1, Lcom/android/settings/applications/manageapplications/a;

    sget-object v2, Lcom/android/settings/applications/k;->f:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3, v4}, Lcom/android/settings/applications/manageapplications/a;-><init>(Lcom/coloros/settingslib/applications/ApplicationsState$b;II)V

    aput-object v1, v0, v3

    .line 161
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/b;->a:[Lcom/android/settings/applications/manageapplications/a;

    new-instance v1, Lcom/android/settings/applications/manageapplications/a;

    sget-object v2, Lcom/android/settings/applications/h;->f:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    const/16 v3, 0xb

    const v4, 0x7f1209aa

    invoke-direct {v1, v2, v3, v4}, Lcom/android/settings/applications/manageapplications/a;-><init>(Lcom/coloros/settingslib/applications/ApplicationsState$b;II)V

    aput-object v1, v0, v3

    .line 167
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/b;->a:[Lcom/android/settings/applications/manageapplications/a;

    new-instance v1, Lcom/android/settings/applications/manageapplications/a;

    sget-object v2, Lcom/android/settings/applications/l;->f:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    const v3, 0x7f1209ad

    const/16 v4, 0xc

    invoke-direct {v1, v2, v4, v3}, Lcom/android/settings/applications/manageapplications/a;-><init>(Lcom/coloros/settingslib/applications/ApplicationsState$b;II)V

    aput-object v1, v0, v4

    .line 173
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/b;->a:[Lcom/android/settings/applications/manageapplications/a;

    new-instance v1, Lcom/android/settings/applications/manageapplications/a;

    sget-object v2, Lcom/android/settings/applications/f;->f:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    const/16 v4, 0xd

    const v5, 0x7f1209a2

    invoke-direct {v1, v2, v4, v5}, Lcom/android/settings/applications/manageapplications/a;-><init>(Lcom/coloros/settingslib/applications/ApplicationsState$b;II)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 178
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/b;->a:[Lcom/android/settings/applications/manageapplications/a;

    new-instance v1, Lcom/android/settings/applications/manageapplications/a;

    sget-object v2, Lcom/android/settings/wifi/a;->f:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    const/16 v4, 0xf

    invoke-direct {v1, v2, v4, v3}, Lcom/android/settings/applications/manageapplications/a;-><init>(Lcom/coloros/settingslib/applications/ApplicationsState$b;II)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 184
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/b;->a:[Lcom/android/settings/applications/manageapplications/a;

    new-instance v1, Lcom/android/settings/applications/manageapplications/a;

    sget-object v2, Lcom/android/settings/applications/g;->i:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    const/16 v3, 0x10

    const v4, 0x7f1209a5

    invoke-direct {v1, v2, v3, v4}, Lcom/android/settings/applications/manageapplications/a;-><init>(Lcom/coloros/settingslib/applications/ApplicationsState$b;II)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    return-void
.end method

.method public static a(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x2

    return p0

    :pswitch_0
    return v0

    :pswitch_1
    const/16 p0, 0xc

    return p0

    :pswitch_2
    const/16 p0, 0xb

    return p0

    :pswitch_3
    const/4 p0, 0x0

    return p0

    :pswitch_4
    const/16 p0, 0xa

    return p0

    :cond_0
    const/16 p0, 0xf

    return p0

    :cond_1
    const/4 p0, 0x6

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a()Lcom/android/settings/applications/manageapplications/b;
    .locals 1

    .line 191
    sget-object v0, Lcom/android/settings/applications/manageapplications/b;->b:Lcom/android/settings/applications/manageapplications/b;

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Lcom/android/settings/applications/manageapplications/b;

    invoke-direct {v0}, Lcom/android/settings/applications/manageapplications/b;-><init>()V

    sput-object v0, Lcom/android/settings/applications/manageapplications/b;->b:Lcom/android/settings/applications/manageapplications/b;

    .line 194
    :cond_0
    sget-object v0, Lcom/android/settings/applications/manageapplications/b;->b:Lcom/android/settings/applications/manageapplications/b;

    return-object v0
.end method
