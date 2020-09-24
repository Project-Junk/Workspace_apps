.class public Lcom/coloros/settings/feature/zenmode/OppoZenModeTimePickerDialog;
.super Lcolor/support/v7/app/AlertDialog;
.source "OppoZenModeTimePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/color/support/widget/OppoTimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/zenmode/OppoZenModeTimePickerDialog$a;
    }
.end annotation


# instance fields
.field a:I

.field b:I

.field c:Z

.field private final d:Lcom/color/support/widget/OppoTimePicker;

.field private final e:Lcom/coloros/settings/feature/zenmode/OppoZenModeTimePickerDialog$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/coloros/settings/feature/zenmode/OppoZenModeTimePickerDialog$a;IIZ)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 78
    invoke-direct/range {v0 .. v6}, Lcom/coloros/settings/feature/zenmode/OppoZenModeTimePickerDialog;-><init>(Landroid/content/Context;Lcom/coloros/settings/feature/zenmode/OppoZenModeTimePickerDialog$a;IIZB)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/coloros/settings/feature/zenmode/OppoZenModeTimePickerDialog$a;IIZB)V
    .locals 0

    const/4 p6, 0x0

    .line 91
    invoke-direct {p0, p1, p6}, Lcolor/support/v7/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 92
    iput-object p2, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeTimePickerDialog;->e:Lcom/coloros/settings/feature/zenmode/OppoZenModeTimePickerDialog$a;

    .line 93
    iput p3, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeTimePickerDialog;->a:I

    .line 94
    iput p4, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeTimePickerDialog;->b:I

    .line 95
    iput-boolean p5, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeTimePickerDialog;->c:Z

    .line 97
    invoke-virtual {p0, p6}, Lcom/coloros/settings/feature/zenmode/OppoZenModeTimePickerDialog;->setIcon(I)V

    .line 103
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/OppoZenModeTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f120f85

    .line 104
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 p4, -0x1

    invoke-virtual {p0, p4, p3, p0}, Lcom/coloros/settings/feature/zenmode/OppoZenModeTimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const-string p3, "layout_inflater"

    .line 109
    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const p3, 0x7f0d0232

    const/4 p4, 0x0

    .line 110
    invoke-virtual {p2, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f07013a

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    .line 114
    invoke-virtual {p2, p6, p1, p6, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 116
    invoke-virtual {p0, p2}, Lcom/coloros/settings/feature/zenmode/OppoZenModeTimePickerDialog;->setView(Landroid/view/View;)V

    const p1, 0x7f0a06ed

    .line 117
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/color/support/widget/OppoTimePicker;

    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeTimePickerDialog;->d:Lcom/color/support/widget/OppoTimePicker;

    .line 120
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeTimePickerDialog;->d:Lcom/color/support/widget/OppoTimePicker;

    iget-boolean p2, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeTimePickerDialog;->c:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/color/support/widget/OppoTimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 121
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeTimePickerDialog;->d:Lcom/color/support/widget/OppoTimePicker;

    iget p2, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeTimePickerDialog;->a:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/color/support/widget/OppoTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 122
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeTimePickerDialog;->d:Lcom/color/support/widget/OppoTimePicker;

    iget p2, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeTimePickerDialog;->b:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/color/support/widget/OppoTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 123
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeTimePickerDialog;->d:Lcom/color/support/widget/OppoTimePicker;

    invoke-virtual {p1, p0}, Lcom/color/support/widget/OppoTimePicker;->setOnTimeChangedListener(Lcom/color/support/widget/OppoTimePicker$OnTimeChangedListener;)V

    .line 124
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeTimePickerDialog;->d:Lcom/color/support/widget/OppoTimePicker;

    invoke-virtual {p1, p6}, Lcom/color/support/widget/OppoTimePicker;->setTextVisibility(Z)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 128
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeTimePickerDialog;->e:Lcom/coloros/settings/feature/zenmode/OppoZenModeTimePickerDialog$a;

    if-eqz p1, :cond_0

    .line 129
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeTimePickerDialog;->d:Lcom/color/support/widget/OppoTimePicker;

    invoke-virtual {p1}, Lcom/color/support/widget/OppoTimePicker;->clearFocus()V

    .line 130
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeTimePickerDialog;->e:Lcom/coloros/settings/feature/zenmode/OppoZenModeTimePickerDialog$a;

    iget-object p2, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeTimePickerDialog;->d:Lcom/color/support/widget/OppoTimePicker;

    invoke-virtual {p2}, Lcom/color/support/widget/OppoTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeTimePickerDialog;->d:Lcom/color/support/widget/OppoTimePicker;

    .line 131
    invoke-virtual {v0}, Lcom/color/support/widget/OppoTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 130
    invoke-interface {p1, p2, v0}, Lcom/coloros/settings/feature/zenmode/OppoZenModeTimePickerDialog$a;->a(II)V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 157
    invoke-super {p0, p1}, Lcolor/support/v7/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "hour"

    .line 158
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "minute"

    .line 159
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 160
    iget-object v2, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeTimePickerDialog;->d:Lcom/color/support/widget/OppoTimePicker;

    const-string v3, "is24hour"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/color/support/widget/OppoTimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 161
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeTimePickerDialog;->d:Lcom/color/support/widget/OppoTimePicker;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/color/support/widget/OppoTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 162
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeTimePickerDialog;->d:Lcom/color/support/widget/OppoTimePicker;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/color/support/widget/OppoTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 148
    invoke-super {p0}, Lcolor/support/v7/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeTimePickerDialog;->d:Lcom/color/support/widget/OppoTimePicker;

    invoke-virtual {v1}, Lcom/color/support/widget/OppoTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "hour"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 150
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeTimePickerDialog;->d:Lcom/color/support/widget/OppoTimePicker;

    invoke-virtual {v1}, Lcom/color/support/widget/OppoTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "minute"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 151
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeTimePickerDialog;->d:Lcom/color/support/widget/OppoTimePicker;

    invoke-virtual {v1}, Lcom/color/support/widget/OppoTimePicker;->is24HourView()Z

    move-result v1

    const-string v2, "is24hour"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public onStop()V
    .locals 0

    .line 168
    invoke-super {p0}, Lcolor/support/v7/app/AlertDialog;->onStop()V

    return-void
.end method

.method public onTimeChanged(Lcom/color/support/widget/OppoTimePicker;II)V
    .locals 0

    return-void
.end method
