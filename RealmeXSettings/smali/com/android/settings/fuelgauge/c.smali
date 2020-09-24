.class public final Lcom/android/settings/fuelgauge/c;
.super Ljava/lang/Object;
.source "BatteryEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/c$b;,
        Lcom/android/settings/fuelgauge/c$a;
    }
.end annotation


# static fields
.field static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/c$b;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/fuelgauge/c;",
            ">;"
        }
    .end annotation
.end field

.field static c:Landroid/os/Handler;

.field static d:Ljava/util/Locale;

.field private static k:Lcom/android/settings/fuelgauge/c$a;


# instance fields
.field public final e:Landroid/content/Context;

.field public final f:Lcom/android/internal/os/BatterySipper;

.field public g:Ljava/lang/String;

.field public h:Landroid/graphics/drawable/Drawable;

.field public i:I

.field public j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/c;->a:Ljava/util/HashMap;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/c;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 60
    sput-object v0, Lcom/android/settings/fuelgauge/c;->d:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserManager;Lcom/android/internal/os/BatterySipper;)V
    .locals 2

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    sput-object p2, Lcom/android/settings/fuelgauge/c;->c:Landroid/os/Handler;

    .line 140
    iput-object p1, p0, Lcom/android/settings/fuelgauge/c;->e:Landroid/content/Context;

    .line 141
    iput-object p4, p0, Lcom/android/settings/fuelgauge/c;->f:Lcom/android/internal/os/BatterySipper;

    .line 142
    sget-object p2, Lcom/android/settings/fuelgauge/c$1;->a:[I

    iget-object v0, p4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v0}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v0

    aget p2, p2, v0

    const v0, 0x7f0806a3

    const v1, 0x7f080827

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_1

    .line 214
    :pswitch_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f12014f

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/c;->g:Ljava/lang/String;

    const p2, 0x7f080818

    .line 215
    iput p2, p0, Lcom/android/settings/fuelgauge/c;->i:I

    goto/16 :goto_1

    .line 210
    :pswitch_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f12103e

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/c;->g:Ljava/lang/String;

    const p2, 0x7f08081e

    .line 211
    iput p2, p0, Lcom/android/settings/fuelgauge/c;->i:I

    goto/16 :goto_1

    .line 206
    :pswitch_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f12104e

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/c;->g:Ljava/lang/String;

    .line 207
    iput v0, p0, Lcom/android/settings/fuelgauge/c;->i:I

    goto/16 :goto_1

    .line 202
    :pswitch_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f12105e

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/c;->g:Ljava/lang/String;

    .line 203
    iput v0, p0, Lcom/android/settings/fuelgauge/c;->i:I

    goto/16 :goto_1

    .line 191
    :pswitch_4
    iget p2, p4, Lcom/android/internal/os/BatterySipper;->userId:I

    invoke-virtual {p3, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 193
    invoke-static {p1, p3, p2}, Lcom/android/settingslib/l;->a(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/fuelgauge/c;->h:Landroid/graphics/drawable/Drawable;

    .line 194
    invoke-static {p1, p2}, Lcom/android/settingslib/l;->a(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/c;->g:Ljava/lang/String;

    goto/16 :goto_1

    :cond_0
    const/4 p2, 0x0

    .line 196
    iput-object p2, p0, Lcom/android/settings/fuelgauge/c;->h:Landroid/graphics/drawable/Drawable;

    .line 197
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f1212a6

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/c;->g:Ljava/lang/String;

    goto/16 :goto_1

    .line 172
    :pswitch_5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    .line 173
    iget-object p3, p4, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {p3}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    .line 175
    iget-object p3, p4, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    if-eqz p3, :cond_2

    iget-object p3, p4, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    array-length p3, p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    goto :goto_0

    .line 178
    :cond_1
    iget-object p3, p4, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {p3}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    aget-object p3, p3, p4

    iput-object p3, p0, Lcom/android/settings/fuelgauge/c;->j:Ljava/lang/String;

    .line 180
    :try_start_0
    iget-object p3, p0, Lcom/android/settings/fuelgauge/c;->j:Ljava/lang/String;

    .line 181
    invoke-virtual {p2, p3, p4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    .line 182
    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/c;->g:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 184
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "PackageManager failed to retrieve ApplicationInfo for: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/settings/fuelgauge/c;->j:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "BatteryEntry"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object p2, p0, Lcom/android/settings/fuelgauge/c;->j:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/c;->g:Ljava/lang/String;

    goto/16 :goto_1

    .line 176
    :cond_2
    :goto_0
    iget-object p2, p4, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/c;->g:Ljava/lang/String;

    goto/16 :goto_1

    .line 168
    :pswitch_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f12104b

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/c;->g:Ljava/lang/String;

    .line 169
    iput v1, p0, Lcom/android/settings/fuelgauge/c;->i:I

    goto/16 :goto_1

    .line 164
    :pswitch_7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f12105b

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/c;->g:Ljava/lang/String;

    .line 165
    iput v1, p0, Lcom/android/settings/fuelgauge/c;->i:I

    goto :goto_1

    .line 160
    :pswitch_8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f12103d

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/c;->g:Ljava/lang/String;

    const-string p2, "com.android.internal.R.drawable.ic_settings_bluetooth"

    .line 161
    invoke-static {p2}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/android/settings/fuelgauge/c;->i:I

    goto :goto_1

    .line 156
    :pswitch_9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f121067

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/c;->g:Ljava/lang/String;

    const p2, 0x7f080845

    .line 157
    iput p2, p0, Lcom/android/settings/fuelgauge/c;->i:I

    goto :goto_1

    .line 152
    :pswitch_a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f12104f

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/c;->g:Ljava/lang/String;

    const p2, 0x7f080843

    .line 153
    iput p2, p0, Lcom/android/settings/fuelgauge/c;->i:I

    goto :goto_1

    .line 148
    :pswitch_b
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f12103f

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/c;->g:Ljava/lang/String;

    const p2, 0x7f0806ba

    .line 149
    iput p2, p0, Lcom/android/settings/fuelgauge/c;->i:I

    goto :goto_1

    .line 144
    :pswitch_c
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f12104c

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/c;->g:Ljava/lang/String;

    const p2, 0x7f080838

    .line 145
    iput p2, p0, Lcom/android/settings/fuelgauge/c;->i:I

    .line 218
    :goto_1
    iget p2, p0, Lcom/android/settings/fuelgauge/c;->i:I

    if-lez p2, :cond_3

    .line 219
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/c;->h:Landroid/graphics/drawable/Drawable;

    .line 221
    :cond_3
    iget-object p1, p0, Lcom/android/settings/fuelgauge/c;->g:Ljava/lang/String;

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/android/settings/fuelgauge/c;->i:I

    if-nez p1, :cond_b

    :cond_4
    iget-object p1, p0, Lcom/android/settings/fuelgauge/c;->f:Lcom/android/internal/os/BatterySipper;

    iget-object p1, p1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz p1, :cond_b

    .line 222
    iget-object p1, p0, Lcom/android/settings/fuelgauge/c;->f:Lcom/android/internal/os/BatterySipper;

    iget-object p1, p1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result p1

    .line 2239
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    .line 2240
    sget-object p3, Lcom/android/settings/fuelgauge/c;->d:Ljava/util/Locale;

    if-eq p3, p2, :cond_5

    .line 3121
    sget-object p3, Lcom/android/settings/fuelgauge/c;->a:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->clear()V

    .line 2242
    sput-object p2, Lcom/android/settings/fuelgauge/c;->d:Ljava/util/Locale;

    .line 2245
    :cond_5
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    .line 2246
    sget-object p3, Lcom/android/settings/fuelgauge/c;->a:Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 2247
    sget-object p1, Lcom/android/settings/fuelgauge/c;->a:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/fuelgauge/c$b;

    .line 2248
    iget-object p2, p1, Lcom/android/settings/fuelgauge/c$b;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/c;->j:Ljava/lang/String;

    .line 2249
    iget-object p2, p1, Lcom/android/settings/fuelgauge/c$b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/c;->g:Ljava/lang/String;

    .line 2250
    iget-object p1, p1, Lcom/android/settings/fuelgauge/c$b;->c:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/c;->h:Landroid/graphics/drawable/Drawable;

    return-void

    .line 2253
    :cond_6
    iget-object p2, p0, Lcom/android/settings/fuelgauge/c;->e:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    .line 2254
    invoke-virtual {p2}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/fuelgauge/c;->h:Landroid/graphics/drawable/Drawable;

    .line 2255
    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_a

    if-nez p1, :cond_7

    .line 2257
    iget-object p1, p0, Lcom/android/settings/fuelgauge/c;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f12111e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/c;->g:Ljava/lang/String;

    goto :goto_2

    .line 2258
    :cond_7
    iget-object p1, p0, Lcom/android/settings/fuelgauge/c;->g:Ljava/lang/String;

    const-string p2, "mediaserver"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 2259
    iget-object p1, p0, Lcom/android/settings/fuelgauge/c;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f12111f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/c;->g:Ljava/lang/String;

    goto :goto_2

    .line 2260
    :cond_8
    iget-object p1, p0, Lcom/android/settings/fuelgauge/c;->g:Ljava/lang/String;

    const-string p2, "dex2oat"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 2261
    iget-object p1, p0, Lcom/android/settings/fuelgauge/c;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f12111c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/c;->g:Ljava/lang/String;

    :cond_9
    :goto_2
    const p1, 0x7f080800

    .line 2263
    iput p1, p0, Lcom/android/settings/fuelgauge/c;->i:I

    .line 2264
    iget-object p1, p0, Lcom/android/settings/fuelgauge/c;->e:Landroid/content/Context;

    iget p2, p0, Lcom/android/settings/fuelgauge/c;->i:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/c;->h:Landroid/graphics/drawable/Drawable;

    .line 2267
    :cond_a
    sget-object p1, Lcom/android/settings/fuelgauge/c;->c:Landroid/os/Handler;

    if-eqz p1, :cond_b

    .line 2268
    sget-object p1, Lcom/android/settings/fuelgauge/c;->b:Ljava/util/ArrayList;

    monitor-enter p1

    .line 2269
    :try_start_1
    sget-object p2, Lcom/android/settings/fuelgauge/c;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2270
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :cond_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static a()V
    .locals 3

    .line 95
    sget-object v0, Lcom/android/settings/fuelgauge/c;->c:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 96
    sget-object v0, Lcom/android/settings/fuelgauge/c;->b:Ljava/util/ArrayList;

    monitor-enter v0

    .line 97
    :try_start_0
    sget-object v1, Lcom/android/settings/fuelgauge/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 98
    sget-object v1, Lcom/android/settings/fuelgauge/c;->k:Lcom/android/settings/fuelgauge/c$a;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 99
    sget-object v1, Lcom/android/settings/fuelgauge/c;->k:Lcom/android/settings/fuelgauge/c$a;

    .line 1070
    iput-boolean v2, v1, Lcom/android/settings/fuelgauge/c$a;->a:Z

    .line 101
    :cond_0
    new-instance v1, Lcom/android/settings/fuelgauge/c$a;

    invoke-direct {v1}, Lcom/android/settings/fuelgauge/c$a;-><init>()V

    .line 102
    sput-object v1, Lcom/android/settings/fuelgauge/c;->k:Lcom/android/settings/fuelgauge/c$a;

    invoke-virtual {v1, v2}, Lcom/android/settings/fuelgauge/c$a;->setPriority(I)V

    .line 103
    sget-object v1, Lcom/android/settings/fuelgauge/c;->k:Lcom/android/settings/fuelgauge/c$a;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/c$a;->start()V

    .line 104
    sget-object v1, Lcom/android/settings/fuelgauge/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 106
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    return-void
.end method

.method public static b()V
    .locals 3

    .line 111
    sget-object v0, Lcom/android/settings/fuelgauge/c;->b:Ljava/util/ArrayList;

    monitor-enter v0

    .line 112
    :try_start_0
    sget-object v1, Lcom/android/settings/fuelgauge/c;->k:Lcom/android/settings/fuelgauge/c$a;

    if-eqz v1, :cond_0

    .line 113
    sget-object v1, Lcom/android/settings/fuelgauge/c;->k:Lcom/android/settings/fuelgauge/c$a;

    const/4 v2, 0x1

    .line 2070
    iput-boolean v2, v1, Lcom/android/settings/fuelgauge/c$a;->a:Z

    const/4 v1, 0x0

    .line 114
    sput-object v1, Lcom/android/settings/fuelgauge/c;->k:Lcom/android/settings/fuelgauge/c$a;

    .line 115
    sput-object v1, Lcom/android/settings/fuelgauge/c;->c:Landroid/os/Handler;

    .line 117
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static c()V
    .locals 1

    .line 121
    sget-object v0, Lcom/android/settings/fuelgauge/c;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method
