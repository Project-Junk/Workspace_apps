.class public Lcom/android/settings/BandMode;
.super Landroid/app/Activity;
.source "BandMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/BandMode$a;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private b:Landroid/widget/ListView;

.field private c:Landroid/widget/ArrayAdapter;

.field private d:Lcom/android/settings/BandMode$a;

.field private e:Landroid/content/DialogInterface;

.field private f:Lcom/android/internal/telephony/Phone;

.field private g:Landroid/widget/AdapterView$OnItemClickListener;

.field private h:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    const-string v0, "Automatic"

    const-string v1, "Europe"

    const-string v2, "United States"

    const-string v3, "Japan"

    const-string v4, "Australia"

    const-string v5, "Australia 2"

    const-string v6, "Cellular 800"

    const-string v7, "PCS"

    const-string v8, "Class 3 (JTACS)"

    const-string v9, "Class 4 (Korea-PCS)"

    const-string v10, "Class 5"

    const-string v11, "Class 6 (IMT2000)"

    const-string v12, "Class 7 (700Mhz-Upper)"

    const-string v13, "Class 8 (1800Mhz-Upper)"

    const-string v14, "Class 9 (900Mhz)"

    const-string v15, "Class 10 (800Mhz-Secondary)"

    const-string v16, "Class 11 (Europe PAMR 400Mhz)"

    const-string v17, "Class 15 (US-AWS)"

    const-string v18, "Class 16 (US-2500Mhz)"

    .line 41
    filled-new-array/range {v0 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/BandMode;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/android/settings/BandMode;->d:Lcom/android/settings/BandMode$a;

    .line 68
    iput-object v0, p0, Lcom/android/settings/BandMode;->f:Lcom/android/internal/telephony/Phone;

    .line 88
    new-instance v0, Lcom/android/settings/BandMode$1;

    invoke-direct {v0, p0}, Lcom/android/settings/BandMode$1;-><init>(Lcom/android/settings/BandMode;)V

    iput-object v0, p0, Lcom/android/settings/BandMode;->g:Landroid/widget/AdapterView$OnItemClickListener;

    .line 212
    new-instance v0, Lcom/android/settings/BandMode$2;

    invoke-direct {v0, p0}, Lcom/android/settings/BandMode$2;-><init>(Lcom/android/settings/BandMode;)V

    iput-object v0, p0, Lcom/android/settings/BandMode;->h:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/BandMode;)Landroid/os/Handler;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/settings/BandMode;->h:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic a(Lcom/android/settings/BandMode;Lcom/android/settings/BandMode$a;)Lcom/android/settings/BandMode$a;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/android/settings/BandMode;->d:Lcom/android/settings/BandMode$a;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/BandMode;Landroid/os/AsyncResult;)V
    .locals 6

    .line 1143
    iget-object v0, p0, Lcom/android/settings/BandMode;->e:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 1202
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/BandMode;->c:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 1203
    iget-object v0, p0, Lcom/android/settings/BandMode;->c:Landroid/widget/ArrayAdapter;

    .line 1204
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 1203
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    goto :goto_0

    .line 1150
    :cond_1
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 1151
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    check-cast p1, [I

    .line 1153
    array-length v0, p1

    if-nez v0, :cond_2

    const-string p0, "phone"

    const-string p1, "No Supported Band Modes"

    .line 1154
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1158
    :cond_2
    aget v0, p1, v1

    if-lez v0, :cond_4

    .line 1161
    iget-object v3, p0, Lcom/android/settings/BandMode;->c:Landroid/widget/ArrayAdapter;

    new-instance v4, Lcom/android/settings/BandMode$a;

    invoke-direct {v4, v1}, Lcom/android/settings/BandMode$a;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    move v3, v2

    :goto_1
    if-gt v3, v0, :cond_5

    .line 1164
    aget v4, p1, v3

    if-eqz v4, :cond_3

    .line 1167
    new-instance v4, Lcom/android/settings/BandMode$a;

    aget v5, p1, v3

    invoke-direct {v4, v5}, Lcom/android/settings/BandMode$a;-><init>(I)V

    .line 1168
    iget-object v5, p0, Lcom/android/settings/BandMode;->c:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    move v2, v1

    :cond_5
    if-nez v2, :cond_6

    :goto_2
    const/16 p1, 0x13

    if-ge v1, p1, :cond_6

    .line 1178
    new-instance p1, Lcom/android/settings/BandMode$a;

    invoke-direct {p1, v1}, Lcom/android/settings/BandMode$a;-><init>(I)V

    .line 1179
    iget-object v0, p0, Lcom/android/settings/BandMode;->c:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1183
    :cond_6
    iget-object p0, p0, Lcom/android/settings/BandMode;->b:Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/widget/ListView;->requestFocus()Z

    return-void
.end method

.method static synthetic a(Lcom/android/settings/BandMode;Ljava/lang/Throwable;)V
    .locals 2

    .line 2187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f1202c8

    invoke-virtual {p0, v1}, Lcom/android/settings/BandMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/BandMode;->d:Lcom/android/settings/BandMode$a;

    .line 2188
    invoke-virtual {v1}, Lcom/android/settings/BandMode$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 2191
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f1202c6

    invoke-virtual {p0, v0}, Lcom/android/settings/BandMode;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2193
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f1202c9

    invoke-virtual {p0, v0}, Lcom/android/settings/BandMode;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2196
    :goto_0
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2197
    invoke-virtual {v0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a

    const/4 v1, 0x0

    .line 2198
    invoke-virtual {p1, v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->show()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/BandMode;->e:Landroid/content/DialogInterface;

    return-void
.end method

.method static synthetic a()[Ljava/lang/String;
    .locals 1

    .line 33
    sget-object v0, Lcom/android/settings/BandMode;->a:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/BandMode;)Lcom/android/settings/BandMode$a;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/settings/BandMode;->d:Lcom/android/settings/BandMode$a;

    return-object p0
.end method

.method static synthetic c(Lcom/android/settings/BandMode;)Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/settings/BandMode;->f:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 72
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x5

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/settings/BandMode;->requestWindowFeature(I)Z

    const p1, 0x7f0d004c

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/settings/BandMode;->setContentView(I)V

    .line 77
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/BandMode;->f:Lcom/android/internal/telephony/Phone;

    const p1, 0x7f0a00c9

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/settings/BandMode;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/android/settings/BandMode;->b:Landroid/widget/ListView;

    .line 80
    new-instance p1, Landroid/widget/ArrayAdapter;

    const v0, 0x1090003

    invoke-direct {p1, p0, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/android/settings/BandMode;->c:Landroid/widget/ArrayAdapter;

    .line 82
    iget-object p1, p0, Lcom/android/settings/BandMode;->b:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/settings/BandMode;->c:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    iget-object p1, p0, Lcom/android/settings/BandMode;->b:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/settings/BandMode;->g:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const p1, 0x7f1202c7

    .line 1125
    invoke-virtual {p0, p1}, Lcom/android/settings/BandMode;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1131
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1132
    invoke-virtual {v0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 1133
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->show()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/BandMode;->e:Landroid/content/DialogInterface;

    .line 1135
    iget-object p1, p0, Lcom/android/settings/BandMode;->h:Landroid/os/Handler;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 1136
    iget-object v0, p0, Lcom/android/settings/BandMode;->f:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->queryAvailableBandMode(Landroid/os/Message;)V

    return-void
.end method
