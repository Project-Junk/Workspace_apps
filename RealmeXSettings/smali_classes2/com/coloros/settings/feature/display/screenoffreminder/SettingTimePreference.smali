.class public Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;
.super Landroidx/preference/Preference;
.source "SettingTimePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/coloros/settings/widget/LocalOppoTimePicker$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference$a;
    }
.end annotation


# instance fields
.field a:Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference$a;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/coloros/settings/widget/LocalOppoTimePicker;

.field private e:Lcom/coloros/settings/widget/LocalOppoTimePicker;

.field private f:Landroid/content/ContentResolver;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Landroid/view/ViewStub;

.field private o:Landroid/view/ViewStub;

.field private p:Z

.field private q:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 104
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 65
    iput-boolean p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->k:Z

    .line 66
    iput-boolean p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->l:Z

    .line 75
    new-instance p2, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference$1;

    invoke-direct {p2, p0}, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference$1;-><init>(Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;)V

    iput-object p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->q:Landroid/os/Handler;

    const-string p2, "SettingTimePreference"

    const-string p3, "SettingTimePreference: oncreate "

    .line 96
    invoke-static {p2, p3}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->f:Landroid/content/ContentResolver;

    .line 98
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->p:Z

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f12018d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->m:Ljava/lang/String;

    const p1, 0x7f0d003b

    .line 100
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->setLayoutResource(I)V

    return-void
.end method

.method private a(Lcom/color/support/widget/OppoTimePicker;)V
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->q:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->q:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->q:Landroid/os/Handler;

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 161
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->q:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private synthetic a(Lcom/color/support/widget/OppoTimePicker;II)V
    .locals 0

    .line 363
    iput p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->i:I

    .line 364
    iput p3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->j:I

    .line 366
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->a(Lcom/color/support/widget/OppoTimePicker;)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;Lcom/coloros/settings/widget/LocalOppoTimePicker;)V
    .locals 4

    .line 2075
    iget-boolean v0, p1, Lcom/coloros/settings/widget/LocalOppoTimePicker;->a:Z

    if-eqz v0, :cond_b

    .line 1169
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->d:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    const/16 v1, 0x3b

    const-string v2, " "

    if-ne p1, v0, :cond_5

    .line 1170
    iget p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->g:I

    iget v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->i:I

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->h:I

    iget v3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->j:I

    if-ne v0, v3, :cond_2

    if-nez v0, :cond_0

    .line 1173
    iput v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->h:I

    add-int/lit8 p1, p1, -0x1

    .line 1174
    iput p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->g:I

    .line 1175
    iget p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->g:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const/16 p1, 0x17

    .line 1176
    iput p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->g:I

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 1179
    iput v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->h:I

    .line 1181
    :cond_1
    :goto_0
    iget p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->g:I

    .line 1182
    iget v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->h:I

    .line 1183
    iget-object v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->d:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 1184
    iget-object v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->d:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 1185
    iget-object v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->d:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-virtual {v1}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->is24HourView()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/coloros/settings/feature/display/screenoffreminder/a;->a(IIZ)Ljava/lang/String;

    move-result-object p1

    .line 1186
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1188
    :cond_2
    iget p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->g:I

    iget v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->h:I

    iget-object v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->d:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-virtual {v1}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->is24HourView()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/coloros/settings/feature/display/screenoffreminder/a;->a(IIZ)Ljava/lang/String;

    move-result-object p1

    .line 1189
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1190
    iget p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->i:I

    iget v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->j:I

    iget-object v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->e:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-virtual {v1}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->is24HourView()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/coloros/settings/feature/display/screenoffreminder/a;->a(IIZ)Ljava/lang/String;

    move-result-object p1

    .line 1191
    iget v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->g:I

    iget v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->i:I

    if-gt v0, v1, :cond_3

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->h:I

    iget v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->j:I

    if-le v0, v1, :cond_4

    .line 1192
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1194
    :cond_4
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1197
    :cond_5
    iget p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->g:I

    iget v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->i:I

    if-ne p1, v0, :cond_8

    iget p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->h:I

    iget v3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->j:I

    if-ne p1, v3, :cond_8

    if-ne v3, v1, :cond_6

    const/4 p1, 0x0

    .line 1200
    iput p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->j:I

    add-int/lit8 v0, v0, 0x1

    .line 1201
    iput v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->i:I

    .line 1202
    iget v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->i:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_7

    .line 1203
    iput p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->i:I

    goto :goto_1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 1206
    iput v3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->j:I

    .line 1208
    :cond_7
    :goto_1
    iget p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->i:I

    .line 1209
    iget v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->j:I

    .line 1210
    iget-object v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->e:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 1211
    iget-object v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->e:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 1212
    iget-object v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->e:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-virtual {v1}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->is24HourView()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/coloros/settings/feature/display/screenoffreminder/a;->a(IIZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 1215
    :cond_8
    iget p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->i:I

    iget v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->j:I

    iget-object v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->e:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-virtual {v1}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->is24HourView()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/coloros/settings/feature/display/screenoffreminder/a;->a(IIZ)Ljava/lang/String;

    move-result-object p1

    .line 1216
    iget v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->g:I

    iget v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->i:I

    if-gt v0, v1, :cond_9

    if-ne v0, v1, :cond_a

    iget v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->h:I

    iget v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->j:I

    if-le v0, v1, :cond_a

    .line 1217
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1219
    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1223
    :goto_3
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->b()V

    .line 1224
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->a:Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference$a;

    if-eqz p1, :cond_b

    .line 1225
    iget v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->g:I

    iget v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->h:I

    iget v2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->i:I

    iget p0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->j:I

    invoke-interface {p1, v0, v1, v2, p0}, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference$a;->a(IIII)V

    :cond_b
    return-void
.end method

.method private static a(Landroid/view/ViewStub;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 333
    invoke-virtual {p0}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private b()V
    .locals 4

    .line 285
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->f:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->g:I

    const/4 v2, -0x2

    const-string v3, "Setting_AodSetTimeBeginHour"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 286
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->f:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->h:I

    const-string v3, "Setting_AodSetTimeBeginMin"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 287
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->f:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->i:I

    const-string v3, "Setting_AodSetTimeEndHour"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 288
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->f:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->j:I

    const-string v3, "Setting_AodSetTimeEndMin"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private synthetic b(Lcom/color/support/widget/OppoTimePicker;II)V
    .locals 0

    .line 346
    iput p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->g:I

    .line 347
    iput p3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->h:I

    .line 348
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->a(Lcom/color/support/widget/OppoTimePicker;)V

    return-void
.end method

.method private c()V
    .locals 2

    .line 313
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->b:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->k:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 314
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->c:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->l:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method private d()V
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->d:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->n:Landroid/view/ViewStub;

    invoke-static {v0}, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->a(Landroid/view/ViewStub;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->n:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 320
    iget-object v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->n:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v1, 0x7f0a0485

    .line 321
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/LocalOppoTimePicker;

    iput-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->d:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    .line 322
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->e()V

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->e:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->o:Landroid/view/ViewStub;

    invoke-static {v0}, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->a(Landroid/view/ViewStub;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 325
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->o:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 326
    iget-object v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->o:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v1, 0x7f0a0153

    .line 327
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/LocalOppoTimePicker;

    iput-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->e:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    .line 328
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->f()V

    :cond_3
    return-void
.end method

.method private e()V
    .locals 3

    .line 337
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->d:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    if-eqz v0, :cond_1

    .line 338
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    .line 339
    iget-object v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->d:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 340
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->d:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    iget-boolean v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->k:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->d:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-virtual {v0, v2}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setTextVisibility(Z)V

    .line 342
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->d:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    iget v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 343
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->d:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    iget v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 344
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->d:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-virtual {v0, p0}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setOnTouchEndListener(Lcom/coloros/settings/widget/LocalOppoTimePicker$a;)V

    .line 345
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->d:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    new-instance v1, Lcom/coloros/settings/feature/display/screenoffreminder/-$$Lambda$SettingTimePreference$ihuvs7JVoDon9F3SIrke1qFSAak;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/display/screenoffreminder/-$$Lambda$SettingTimePreference$ihuvs7JVoDon9F3SIrke1qFSAak;-><init>(Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;)V

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setOnTimeChangedListener(Lcom/color/support/widget/OppoTimePicker$OnTimeChangedListener;)V

    :cond_1
    return-void
.end method

.method private f()V
    .locals 3

    .line 354
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->e:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    if-eqz v0, :cond_1

    .line 355
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    .line 356
    iget-object v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->e:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 357
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->e:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    iget-boolean v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->l:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setVisibility(I)V

    .line 358
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->e:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-virtual {v0, v2}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setTextVisibility(Z)V

    .line 359
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->e:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    iget v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 360
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->e:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    iget v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 361
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->e:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-virtual {v0, p0}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setOnTouchEndListener(Lcom/coloros/settings/widget/LocalOppoTimePicker$a;)V

    .line 362
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->e:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    new-instance v1, Lcom/coloros/settings/feature/display/screenoffreminder/-$$Lambda$SettingTimePreference$lJkbtjBYTQd00U6OLhN44oOjKdI;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/display/screenoffreminder/-$$Lambda$SettingTimePreference$lJkbtjBYTQd00U6OLhN44oOjKdI;-><init>(Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;)V

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setOnTimeChangedListener(Lcom/color/support/widget/OppoTimePicker$OnTimeChangedListener;)V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$ihuvs7JVoDon9F3SIrke1qFSAak(Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;Lcom/color/support/widget/OppoTimePicker;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->b(Lcom/color/support/widget/OppoTimePicker;II)V

    return-void
.end method

.method public static synthetic lambda$lJkbtjBYTQd00U6OLhN44oOjKdI(Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;Lcom/color/support/widget/OppoTimePicker;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->a(Lcom/color/support/widget/OppoTimePicker;II)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 300
    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->k:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->d:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-virtual {v0, v2}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setVisibility(I)V

    .line 302
    iput-boolean v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->k:Z

    .line 305
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->l:Z

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->e:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-virtual {v0, v2}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setVisibility(I)V

    .line 307
    iput-boolean v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->l:Z

    :cond_1
    return-void
.end method

.method public final a(Lcom/coloros/settings/widget/LocalOppoTimePicker;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->a(Lcom/color/support/widget/OppoTimePicker;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 235
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 236
    iget-object p1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a0487

    .line 1112
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0155

    .line 1113
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1114
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1115
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a06f1

    .line 1116
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->n:Landroid/view/ViewStub;

    const v0, 0x7f0a06f0

    .line 1117
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->o:Landroid/view/ViewStub;

    const v0, 0x7f0a0484

    .line 1118
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->b:Landroid/widget/TextView;

    const v0, 0x7f0a0152

    .line 1119
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->c:Landroid/widget/TextView;

    .line 1129
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->f:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/screenoffreminder/a;->a(Landroid/content/ContentResolver;)I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->g:I

    .line 1130
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->f:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/screenoffreminder/a;->b(Landroid/content/ContentResolver;)I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->h:I

    .line 1131
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->f:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/screenoffreminder/a;->c(Landroid/content/ContentResolver;)I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->i:I

    .line 1132
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->f:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/screenoffreminder/a;->d(Landroid/content/ContentResolver;)I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->j:I

    .line 1134
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "initTimeData: mBeginHour is "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->g:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mBeginMinute is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->h:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mEndHour is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->i:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mEndMinute is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->j:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SettingTimePreference"

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    iget p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->g:I

    if-nez p1, :cond_2

    iget p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->h:I

    if-nez p1, :cond_2

    iget p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->i:I

    if-nez p1, :cond_2

    iget p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->j:I

    if-nez p1, :cond_2

    .line 1138
    invoke-static {}, Lcom/coloros/settings/feature/display/screenoffreminder/a;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x6

    :goto_0
    iput p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->g:I

    .line 1139
    invoke-static {}, Lcom/coloros/settings/feature/display/screenoffreminder/a;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x17

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->i:I

    .line 1140
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->f:Landroid/content/ContentResolver;

    iget v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->g:I

    const/4 v1, -0x2

    const-string v2, "Setting_AodSetTimeBeginHour"

    invoke-static {p1, v2, v0, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1142
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->f:Landroid/content/ContentResolver;

    iget v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->i:I

    const-string v2, "Setting_AodSetTimeEndHour"

    invoke-static {p1, v2, v0, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1146
    :cond_2
    iget p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->g:I

    iget v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->h:I

    iget-boolean v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->p:Z

    invoke-static {p1, v0, v1}, Lcom/coloros/settings/feature/display/screenoffreminder/a;->a(IIZ)Ljava/lang/String;

    move-result-object p1

    .line 1147
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1148
    iget p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->i:I

    iget v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->j:I

    iget-boolean v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->p:Z

    invoke-static {p1, v0, v1}, Lcom/coloros/settings/feature/display/screenoffreminder/a;->a(IIZ)Ljava/lang/String;

    move-result-object p1

    .line 1149
    iget v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->g:I

    iget v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->i:I

    if-gt v0, v1, :cond_3

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->h:I

    iget v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->j:I

    if-le v0, v1, :cond_4

    .line 1150
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1152
    :cond_4
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1153
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->b()V

    .line 1121
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->c()V

    .line 1123
    iget-boolean p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->k:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->l:Z

    if-eqz p1, :cond_6

    .line 1124
    :cond_5
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->d()V

    :cond_6
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 241
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    const v3, 0x7f0a0487

    if-ne p1, v3, :cond_1

    .line 243
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->d()V

    .line 244
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->d:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-virtual {p1}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    .line 245
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->d:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-virtual {p1, v2}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setVisibility(I)V

    .line 246
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->e:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setVisibility(I)V

    .line 247
    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->k:Z

    .line 248
    iput-boolean v2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->l:Z

    goto :goto_0

    .line 250
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->d:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setVisibility(I)V

    .line 251
    iput-boolean v2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->k:Z

    goto :goto_0

    :cond_1
    const v3, 0x7f0a0155

    if-ne p1, v3, :cond_3

    .line 254
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->d()V

    .line 255
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->e:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-virtual {p1}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    .line 256
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->e:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-virtual {p1, v2}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setVisibility(I)V

    .line 257
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->d:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setVisibility(I)V

    .line 258
    iput-boolean v2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->k:Z

    .line 259
    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->l:Z

    goto :goto_0

    .line 262
    :cond_2
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->e:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setVisibility(I)V

    .line 263
    iput-boolean v2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->l:Z

    .line 266
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->c()V

    return-void
.end method
